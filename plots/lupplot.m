%get the name of the files as a list via command line
arg_list = argv();
nfiles = numel(arg_list);


%initialized arrays
%I know that this is inneficient but there is no way to know the number of
% files or how many functions each one has, even though it is possible to get
% the n/nfunc values from ../variables.mk file and derive nfunc from there
funcnames = [];
funcsizes = [];
alloctime = [];
schedtime = [];
binditime = [];

%nfiles = 1
for file=1:nfiles
  a = importdata(char(arg_list(file)), '\t', 1);
  %a = importdata('DetailedLegUPTiming2', '\t', 1);

  %selec the functions by name since this is the one unique identifier
  [name, iindex, jindex] = unique(a.textdata(2:end));
  %name
  [nfunc, ~] = size(name);
  [n, ~] = size(a.data);
  %one line for each function
  at = zeros(n/nfunc, nfunc);
  st = zeros(n/nfunc, nfunc);
  bt = zeros(n/nfunc, nfunc);
  fs = zeros(1, nfunc);

  %jindex maps to which position in "name" the position in the original vector
  % refers to. Used as map
  for i=1:nfunc
    fs(i) = a.data(iindex(i), 1);
    at(:,i) = a.data(jindex==i,2);
    st(:,i) = a.data(jindex==i,3);
    bt(:,i) = a.data(jindex==i,4);
  end
  %fs

  %get the name of the benchmark
  parts = strsplit(char(arg_list(file)), '/');
  benchname = parts(end-3);
  funcnames = [funcnames; strcat(benchname, ':', name)]  ;

  %concatenate all files in one array
  funcsizes = [funcsizes, fs];
  alloctime = [alloctime, at];
  schedtime = [schedtime, st];
  binditime = [binditime, bt];
end

%sorts according to the code size, not necessary now but helps to plot
%sizeindex works as jindex
funcnames = funcnames(2:end); %remove the initial empty string
[funcsizes sizeindex] = sort(funcsizes);
funcnames = funcnames(sizeindex);
alloctime = alloctime(:,sizeindex);
schedtime = schedtime(:,sizeindex);
binditime = binditime(:,sizeindex);

allocmean = mean(alloctime);
schedmean = mean(schedtime);
bindimean = mean(binditime);
allocstd = std(alloctime);
schedstd = std(schedtime);
bindistd = std(binditime);

%consider all point in the approximation
%polyx = repmat(funcsizes, n/nfunc, 1);
%allocP = polyfit(polyx, alloctime, 3);
%schedP = polyfit(polyx, schedtime, 3);
%bindiP = polyfit(polyx, binditime, 3);

%considers only the average values in the approximation
polyx = funcsizes;
allocP = polyfit(polyx, allocmean, 3);
schedP = polyfit(polyx, schedmean, 3);
bindiP = polyfit(polyx, bindimean, 3);

interpolx = linspace(funcsizes(1), funcsizes(end));
alloc_interpoly = polyval(allocP, interpolx);
sched_interpoly = polyval(schedP, interpolx);
bindi_interpoly = polyval(bindiP, interpolx);

%get the version of the benchmark
parts = strsplit(char(arg_list(1)), '/');
partname = parts(end-1);


%plotting values (note that we plot the mean and standard variation)
fighandle = figure(1);
errorbar(funcsizes, allocmean, allocstd, '-s');
text(funcsizes, allocmean, funcnames, 'rotation', 90);
hold on;
plot(interpolx, alloc_interpoly, '-r');
xlabel ("Number of LLVM IR instructions");
ylabel ("Time (s)");
graphname = strcat('../build/plots/', partname,'_alloctime.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(2);
errorbar(funcsizes, schedmean, schedstd, '-s');
text(funcsizes, schedmean, funcnames, 'rotation', 90);
hold on;
plot(interpolx, sched_interpoly, '-r');
xlabel ("Number of LLVM IR instructions");
ylabel ("Time (s)");
graphname = strcat('../build/plots/', partname,'_schedtime.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(3);
errorbar(funcsizes, bindimean, bindistd, '-s');
text(funcsizes, bindimean, funcnames, 'rotation', 90);
hold on;
plot(interpolx, bindi_interpoly, '-r');
xlabel ("Number of LLVM IR instructions");
ylabel ("Time (s)");
graphname = strcat('../build/plots/', partname,'_binditime.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

%pause();
