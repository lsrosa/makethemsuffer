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
schedmaptime = [];
schedslvtime = [];
schedfsmtime = [];
schedovhtime = [];
totaltime = zeros(30, nfiles);
filesizes = zeros(1, nfiles);
names = cell();
%nfiles = 1
for file=1:nfiles
  names(file) = arg_list(file);
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

  smt = zeros(n/nfunc, nfunc);
  sst = zeros(n/nfunc, nfunc);
  sft = zeros(n/nfunc, nfunc);
  sot = zeros(n/nfunc, nfunc);

  %jindex maps to which position in "name" the position in the original vector
  % refers to. Used as map

  for i=1:nfunc
    fs(i) = a.data(iindex(i), 1);
    at(:,i) = a.data(jindex==i,2);
    st(:,i) = a.data(jindex==i,3);
    bt(:,i) = a.data(jindex==i,4);
    smt(:,i) = a.data(jindex==i, 5);
    sst(:,i) = a.data(jindex==i, 6);
    sft(:,i) = a.data(jindex==i, 7);
    sot(:,i) = a.data(jindex==i, 8);
    totaltime(:,file) = totaltime(:,file)+a.data(jindex==i,2)+a.data(jindex==i,3)+a.data(jindex==i,4);
    filesizes(file) = filesizes(file)+fs(i);
  end

  %get the name of the benchmark
  parts = strsplit(char(arg_list(file)), '/');
  if(numel(parts) > 3)
    benchname = parts(end-3);
  else
    benchname = 'nothing/';
  end
  funcnames = [funcnames; strcat(benchname, ':', name)];

  %concatenate all files in one array
  funcsizes = [funcsizes, fs];
  alloctime = [alloctime, at];
  schedtime = [schedtime, st];
  binditime = [binditime, bt];
  schedmaptime = [schedmaptime, smt];
  schedslvtime = [schedslvtime, sst];
  schedfsmtime = [schedfsmtime, sft];
  schedovhtime = [schedovhtime, sot];
end

totaltime = mean(totaltime);
save("../build/plots/verilogGen.mat", 'names', 'filesizes', 'totaltime')

%sorts according to the code size, not necessary now but helps to plot
%sizeindex works as jindex
funcnames = funcnames(2:end); %remove the initial empty string
[funcsizes sizeindex] = sort(funcsizes);
funcnames = funcnames(sizeindex);
alloctime = alloctime(:,sizeindex);
schedtime = schedtime(:,sizeindex);
binditime = binditime(:,sizeindex);
schedmaptime = schedmaptime(:,sizeindex);
schedslvtime = schedslvtime(:,sizeindex);
schedfsmtime = schedfsmtime(:,sizeindex);
schedovhtime = schedovhtime(:,sizeindex);

allocmean = mean(alloctime);
schedmean = mean(schedtime);
bindimean = mean(binditime);
schedmapmean = mean(schedmaptime);
schedslvmean = mean(schedslvtime);
schedfsmmean = mean(schedfsmtime);
schedovhmean = mean(schedovhtime);

allocstd = std(alloctime);
schedstd = std(schedtime);
bindistd = std(binditime);
schedmapstd = std(schedmaptime);
schedslvstd = std(schedslvtime);
schedfsmstd = std(schedfsmtime);
schedovhstd = std(schedovhtime);


%consider all point in the approximation
%polyx = repmat(funcsizes, n/nfunc, 1);
%allocP = polyfit(polyx, alloctime, 3);
%schedP = polyfit(polyx, schedtime, 3);
%bindiP = polyfit(polyx, binditime, 3);

%considers only the average values in the approximation
polyx = funcsizes;
degree = 2;
allocP = polyfit(polyx, allocmean, degree);
schedP = polyfit(polyx, schedmean, degree);
bindiP = polyfit(polyx, bindimean, degree);
schedmapP = polyfit(polyx, schedmapmean, degree);
schedslvP = polyfit(polyx, schedslvmean, degree);
schedfsmP = polyfit(polyx, schedfsmmean, degree);
schedovhP = polyfit(polyx, schedovhmean, degree);

interpolx = linspace(funcsizes(1), funcsizes(end), 10);
alloc_interpoly = polyval(allocP, interpolx);
sched_interpoly = polyval(schedP, interpolx);
bindi_interpoly = polyval(bindiP, interpolx);
schedmap_interpoly = polyval(schedmapP, interpolx);
schedslv_interpoly = polyval(schedslvP, interpolx);
schedfsm_interpoly = polyval(schedfsmP, interpolx);
schedovh_interpoly = polyval(schedovhP, interpolx);

%get the version of the benchmark
parts = strsplit(char(arg_list(1)), '/');
partname = parts(end-1);

%plotting values (note that we plot the mean and standard variation)
%fighandle = figure(1);
%errorbar(funcsizes, allocmean, allocstd, '-s');
%text(funcsizes, allocmean, funcnames, 'rotation', 90);
%hold on;
%plot(interpolx, alloc_interpoly, '-r');
%xlabel ("Number of LLVM IR instructions");
%ylabel ("Time (s)");
%graphname = strcat('../build/plots/', partname,'_alloctime.jpg');
%print(fighandle, char(graphname), '-djpg');
%hold off;

%fighandle = figure(3);
%errorbar(funcsizes, bindimean, bindistd, '-s');
%text(funcsizes, bindimean, funcnames, 'rotation', 90);
%hold on;
%plot(interpolx, bindi_interpoly, '-r');
%xlabel ("Number of LLVM IR instructions");
%ylabel ("Time (s)");
%graphname = strcat('../build/plots/', partname,'_binditime.jpg');
%print(fighandle, char(graphname), '-djpg');
%hold off;

fighandle = figure(2); hold on;
errorbar(funcsizes, schedmean, schedstd, '-o');
%text(funcsizes, schedmean, funcnames, 'rotation', 90);
errorbar(funcsizes, schedmapmean, schedmapstd, '-+');
%text(funcsizes, schedmapmean, funcnames, 'rotation', 90);
errorbar(funcsizes, schedslvmean, schedslvstd, '-*');
%text(funcsizes, schedslvmean, funcnames, 'rotation', 90);
errorbar(funcsizes, schedfsmmean, schedfsmstd, '-s');
%text(funcsizes, schedfsmmean, funcnames, 'rotation', 90);
errorbar(funcsizes, schedovhmean, schedovhstd, '-d');
%text(funcsizes, schedovhmean, funcnames, 'rotation', 90);
legend('sched', 'map', 'solv', 'fsm', 'overhead','Location','northwest');
plot(interpolx, sched_interpoly, '-ro');
plot(interpolx, schedmap_interpoly, '-r+');
plot(interpolx, schedslv_interpoly, '-r*');
plot(interpolx, schedfsm_interpoly, '-rs');
plot(interpolx, schedovh_interpoly, '-rd');
xlim([min(interpolx) max(interpolx)]);
xlabel ("Number of LLVM IR instructions");
ylabel ("Time (s)");
graphname = strcat('../build/plots/', partname,'_schedtime.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(1); hold on;
plot(funcsizes, 100*schedmapmean./schedmean, '-+');
plot(funcsizes, 100*schedslvmean./schedmean, '-*');
plot(funcsizes, 100*schedfsmmean./schedmean, '-s');
plot(funcsizes, 100*schedovhmean./schedmean, '-d');
legend('map', 'solv', 'fsm', 'overhead');
xlabel ("Number of LLVM IR instructions");
ylabel ("Percentage of Scheduling time");
graphname = strcat('../build/plots/', partname,'_schedtime_percentages.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;
%pause();
