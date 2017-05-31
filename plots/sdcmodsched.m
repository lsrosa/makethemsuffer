%get the name of the files as a list via command line
arg_list = argv();
%arg_list = 'DetailedModuleSDCSchedulingTime';
nfiles = numel(arg_list);


%initialized arrays
%I know that this is inneficient but there is no way to know the number of
% files or how many functions each one has, even though it is possible to get
% the n/nloops values from ../variables.mk file and derive nloops from there
looplabels = [];
loopsizes = cell();
nsolves = cell();
totaltime = cell();
solvetime = cell();
timeout = cell();
nvariables = cell();
nconstraints = cell();
latency = cell();
II = cell();
TripCnt = cell();

%nfiles = 1
for file=1:nfiles
  arg_list(file);
  %we could had it allllll, rolling in the deeeeeeepppp
  a = importdata(char(arg_list(file)), '\t', 1);

  %a = importdata('DetailedModuleSDCSchedulingTime', '\t', 1);
  %selec the functions by name since this is the one unique identifier
  [labels, iindex, jindex] = unique(a.textdata(2:end));
  %name
  [nloops, ~] = size(labels);
  [n, ~] = size(a.data);
  %one line for each function
  ns = cell();%zeros(n/nloops, nloops);
  tt = cell();%zeros(n/nloops, nloops);
  st = cell();%zeros(n/nloops, nloops);
  lps = cell(); %loop n inst
  to = cell();
  nv = cell();
  nc = cell();
  lt = cell();
  ii = cell();
  tc = cell();
  %jindex maps to which position in "name" the position in the original vector
  % refers to. Used as map

  for i=1:nloops
    lps(i) = a.data(iindex(i), 2);
    %size(a.data(jindex==i,2));

    %"label\ttimeout\tn_IRlines\t#vars\t#constraints\tlatency\tII\tn_solves\tTotal\tSolving\n"
    to(:,i) = a.data(jindex==i,1);
    nv(:,i) = a.data(jindex==i,3);
    nc(:,i) = a.data(jindex==i,4);
    lt(:,i) = a.data(jindex==i,5);
    ii(:,i) = a.data(jindex==i,6);
    tc(:,i) = a.data(jindex==i,7);
    ns(:,i) = a.data(jindex==i,8);
    tt(:,i) = a.data(jindex==i,9);
    st(:,i) = a.data(jindex==i,10);
  end

  %get the name of the benchmark
  parts = strsplit(char(arg_list(file)), '/');
  if(numel(parts) > 3)
    benchname = parts(end-3);
  else
    benchname = 'nothing';
  end
  looplabels = [looplabels; strcat(benchname, ':', labels)];

  %concatenate all files in one array
  nsolves = [nsolves, ns];
  loopsizes = [loopsizes, lps];
  totaltime = [totaltime, tt];
  solvetime = [solvetime, st];
  timeout = [timeout, to];
  nvariables = [nvariables, nv];
  nconstraints = [nconstraints, nc];
  latency = [latency, lt];
  II = [II, ii];
  TripCnt = [TripCnt, tc];
end

%sorts according to the code size, not necessary now but helps to plot
%sizeindex works as jindex
looplabels = looplabels(2:end); %remove the initial empty string
temp = cell2mat(loopsizes);
[temp sizeindex] = sort(temp);
loopsizes = temp;
looplabels = looplabels(sizeindex);
nsolves = nsolves(:,sizeindex);
totaltime = totaltime(:,sizeindex);
solvetime = solvetime(:,sizeindex);
timeout = timeout(:, sizeindex);
nvariables = nvariables(:, sizeindex);
nconstraints = nconstraints(:, sizeindex);
latency = latency(:, sizeindex);
II = II(:, sizeindex);
TripCnt = TripCnt(:, sizeindex);

nsdcsmean = zeros(size(nsolves));
totalmean = zeros(size(totaltime));
solvemean = zeros(size(solvetime));
nsdcsstd = zeros(size(nsolves));
totalstd = zeros(size(totaltime));
solvestd = zeros(size(solvetime));
timeoutmean = zeros(size(timeout));
nvariablesmean = zeros(size(nvariables));
nconstraintsmean = zeros(size(nconstraints));
latencymean = zeros(size(latency));
IImean = zeros(size(II));
TripCntmean = zeros(size(TripCnt));

timeoutstd = zeros(size(timeout));
nvariablesstd = zeros(size(nvariables));
nconstraintsstd = zeros(size(nconstraints));
latencystd = zeros(size(latency));
IIstd = zeros(size(II));
TripCntstd = zeros(size(TripCnt));
loopx = loopsizes;

for i=1:numel(nsolves)
  nsdcsmean(i) = mean(nsolves{i});
  totalmean(i) = mean(totaltime{i});
  solvemean(i) = mean(solvetime{i});
  timeoutmean(i) = mean(timeout{i});
  nvariablesmean(i) = mean(nvariables{i});
  nconstraintsmean(i) = mean(nconstraints{i});
  latencymean(i) = mean(latency{i});
  IImean(i) = mean(II{i});
  TripCntmean(i) = mean(TripCnt{i});

  nsdcsstd(i) = std(nsolves{i});
  totalstd(i) = std(totaltime{i});
  solvestd(i) = std(solvetime{i});
  timeoutstd(i) = std(timeout{i});
  nvariablesstd(i) = std(nvariables{i});
  nconstraintsstd(i) = std(nconstraints{i});
  latencystd(i) = std(latency{i});
end

%considers only the average values in the approximation
polyx = loopx;
degree = 2;
nsdcsP = polyfit(polyx, nsdcsmean, degree);
totalP = polyfit(polyx, totalmean, degree);
solveP = polyfit(polyx, solvemean, degree);
nvariablesP = polyfit(polyx, nvariablesmean, degree);
nconstraintsP = polyfit(polyx, nconstraintsmean, degree);
latencyP = polyfit(polyx, latencymean, degree);
IIP = polyfit(polyx, IImean, degree);

interpolx = linspace(polyx(1), polyx(end), 10);
nsdcs_interpoly = polyval(nsdcsP, interpolx);
total_interpoly = polyval(totalP, interpolx);
solve_interpoly = polyval(solveP, interpolx);
nvariables_interpoly = polyval(nvariablesP, interpolx);
nconstraints_interpoly = polyval(nconstraintsP, interpolx);
latency_interpoly = polyval(latencyP, interpolx);
II_interpoly = polyval(IIP, interpolx);

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
plot(interpolx, total_interpoly, '-r+');
plot(interpolx, solve_interpoly, '-r*');
text(loopx, totalmean,  num2cell(nsdcsmean));
xlim([min(interpolx) max(interpolx)]);
xlabel ("\# LLVM IR instruction in loop body");
ylabel ("Time (s)");
graphname = strcat('../build/plots/', partname,'_sdcschedtimes.jpg');
%graphname = strcat('./', partname,'_sdcschedtimes.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(2); hold on;
plot(loopx, 100*solvemean./totalmean);
legend('solv');
xlabel ("\# LLVM IR instruction in loop body");
ylabel ("Percentage of solving time");
graphname = strcat('../build/plots/', partname,'_sdcschedtimes_percentages.jpg');
%graphname = strcat('./', partname,'_sdcschedtimes_percentages.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(3); hold on;
errorbar(loopx, nvariablesmean, nvariablesstd, '-b+');
errorbar(loopx, nconstraintsmean, nconstraintsstd, '-b*');
legend('\# of variables', '\# of constraints','Location','northwest');
text(loopx, nvariablesmean,  num2cell(timeoutmean));
plot(interpolx, nvariables_interpoly, '-r+');
plot(interpolx, nconstraints_interpoly, '-r*');
xlim([min(interpolx) max(interpolx)]);
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', partname,'_nvars_nconstr.jpg');
%graphname = strcat('./', partname,'_sdcschedtimes.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(4); hold on;
errorbar(loopx, latencymean, latencystd, '-b+');
errorbar(loopx, IImean, IIstd, '-b*');
legend('Latency', 'II','Location','northwest');
text(loopx, nvariablesmean,  num2cell(timeoutmean));
plot(interpolx, latency_interpoly, '-r+');
plot(interpolx, II_interpoly, '-r*');
xlim([min(interpolx) max(interpolx)]);
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', partname,'_latency_II.jpg');
%graphname = strcat('./', partname,'_sdcschedtimes.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(5); hold on;
totaltime_mean = TripCntmean.*IImean.+latencymean;
totaltime_std  = TripCntstd.*IIstd.+latencystd;
errorbar(loopx, totaltime_mean, totaltime_std, '-b^');
legend('total \# cycles','Location','northwest');
xlim([min(interpolx) max(interpolx)]);
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', partname,'_cycles.jpg');
%graphname = strcat('./', partname,'_sdcschedtimes.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

%dataname = strcat("../build/plots/", partname, ".mat");
save("../build/plots/data.mat", 'loopx', 'totalmean', 'totalstd', 'nsdcsmean', 'nsdcsstd', 'solvemean', 'solvestd', 'nvariablesmean', 'nvariablesstd', 'nconstraintsmean', 'nconstraintsstd', 'latencymean', 'latencystd', 'IImean', 'IIstd', 'totaltime_mean', 'totaltime_std');

return;
