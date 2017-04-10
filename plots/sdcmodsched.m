%get the name of the files as a list via command line
arg_list = argv();
%arg_list = 'DetailedModuleSDCSchedulingTime';
nfiles = numel(arg_list);


%initialized arrays
%I know that this is inneficient but there is no way to know the number of
% files or how many functions each one has, even though it is possible to get
% the n/nloops values from ../variables.mk file and derive nloops from there
looplabels = [];
loopsizes = [];
nsdcs = [];
totaltime = [];
solvetime = [];

%nfiles = 1
for file=1:nfiles
  %a = importdata(char(arg_list(file)), '\t', 1);
  a = importdata('DetailedModuleSDCSchedulingTime', '\t', 1);
  %selec the functions by name since this is the one unique identifier
  [labels, iindex, jindex] = unique(a.textdata(2:end));
  %name
  [nloops, ~] = size(labels);
  [n, ~] = size(a.data);
  %one line for each function
  ns = zeros(n/nloops, nloops);
  tt = zeros(n/nloops, nloops);
  st = zeros(n/nloops, nloops);
  ls = zeros(1, nloops); %loop n inst

  %jindex maps to which position in "name" the position in the original vector
  % refers to. Used as map
  for i=1:nloops
    ls(i) = a.data(iindex(i), 1);
    ns(:,i) = a.data(jindex==i,2);
    tt(:,i) = a.data(jindex==i,3);
    st(:,i) = a.data(jindex==i,4);
  end
  %fs
  %get the name of the benchmark
  parts = strsplit(char(arg_list(file)), '/');
  if(numel(parts) > 3)
    benchname = parts(end-3);
  else
    benchname = 'nothing';
  end
  looplabels = [looplabels; strcat(benchname, ':', labels)];

  %concatenate all files in one array
  nsdcs = [nsdcs, ns];
  loopsizes = [loopsizes, ls];
  totaltime = [totaltime, tt];
  solvetime = [solvetime, st];
end

%sorts according to the code size, not necessary now but helps to plot
%sizeindex works as jindex
looplabels = looplabels(2:end); %remove the initial empty string
[loopsizes sizeindex] = sort(loopsizes);
loopx = loopsizes;
looplabels = looplabels(sizeindex);
nsdcs = nsdcs(:,sizeindex);
totaltime = totaltime(:,sizeindex);
solvetime = solvetime(:,sizeindex);

nsdcsmean = mean(nsdcs);
totalmean = mean(totaltime);
solvemean = mean(solvetime);

nsdcsstd = std(nsdcs);
totalstd = std(totaltime);
solvestd = std(solvetime);

%considers only the average values in the approximation
polyx = loopx;
degree = 2;
nsdcsP = polyfit(polyx, nsdcsmean, degree);
totalP = polyfit(polyx, totalmean, degree);
solveP = polyfit(polyx, solvemean, degree);

interpolx = linspace(nsdcs(1), nsdcs(end), 10);
nsdcs_interpoly = polyval(nsdcsP, interpolx);
total_interpoly = polyval(totalP, interpolx);
solve_interpoly = polyval(solveP, interpolx);

%get the version of the benchmark
parts = strsplit(char(arg_list(1)), '/');
if(numel(parts)>1)
  partname = parts(end-1);
else
  partname = 'emptypart'
end



fighandle = figure(1); hold on;
errorbar(loopx, totalmean, totalstd);
errorbar(loopx, solvemean, solvestd);
%errorbar(loopx, nsdcsmean, nsdcsstd);
legend('total', 'solve','Location','northwest');
%plot(interpolx, total_interpoly, '-r+');
%plot(interpolx, solve_interpoly, '-r*');
text(loopx, totalmean,  num2cell(nsdcsmean));
xlim([min(interpolx) max(interpolx)]);
xlabel ("\# LLVM IR instruction in loop body");
ylabel ("Time (s)");
graphname = strcat('../build/plots/', partname,'_sdcschedtimes.jpg');
graphname = strcat('./', partname,'_sdcschedtimes.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(2); hold on;
plot(loopx, 100*solvemean./totalmean);
legend('solv');
xlabel ("\# LLVM IR instruction in loop body");
ylabel ("Percentage of solving time");
%graphname = strcat('../build/plots/', partname,'_sdcschedtimes_percentages.jpg');
graphname = strcat('./', partname,'_sdcschedtimes_percentages.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;
pause();
