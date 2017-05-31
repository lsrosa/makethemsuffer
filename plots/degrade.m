%get the name of the files as a list via command line
arg_list = argv();
%arg_list = 'DetailedModuleSDCSchedulingTime';
nfiles = numel(arg_list);

looplabels = [];
loopsizes = cell();
nsolves = cell();
totaltime = cell();
solvetime = cell();
schedulerID = cell();
nvariables = cell();
nconstraints = cell();
latency = cell();
II = cell();
TripCnt = cell();
steps = cell();

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
  si = cell();
  nv = cell();
  nc = cell();
  lt = cell();
  ii = cell();
  tc = cell();
  sp = cell();
  %jindex maps to which position in "name" the position in the original vector
  % refers to. Used as map

  for i=1:nloops
    lps(i) = a.data(iindex(i), 3);
    %size(a.data(jindex==i,2));

    %printf(pFile, "%s\t%d\t%f\t%d\t%ld\t%ld\t%ld\t%ld\t%d\t%ld\t%f\t%f\n", moduloScheduler.loopLabel.c_str(), scheduler, step, nIRlines, lp_nvars, lp_nconst, sched_latency, sched_II, moduloScheduler.tripCount, nsdcs, totaltime, solvetime);

    si(:,i) = a.data(jindex==i,1);
    sp(:,i) = a.data(jindex==i,2);
    nv(:,i) = a.data(jindex==i,4);
    nc(:,i) = a.data(jindex==i,5);
    lt(:,i) = a.data(jindex==i,6);
    ii(:,i) = a.data(jindex==i,7);
    tc(:,i) = a.data(jindex==i,8);
    ns(:,i) = a.data(jindex==i,9);
    tt(:,i) = a.data(jindex==i,10);
    st(:,i) = a.data(jindex==i,11);
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
  steps = [steps, sp];
  loopsizes = [loopsizes, lps];
  totaltime = [totaltime, tt];
  solvetime = [solvetime, st];
  schedulerID = [schedulerID, si];
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
steps = steps(:,sizeindex);
nsolves = nsolves(:,sizeindex);
totaltime = totaltime(:,sizeindex);
solvetime = solvetime(:,sizeindex);
schedulerID = schedulerID(:, sizeindex);
nvariables = nvariables(:, sizeindex);
nconstraints = nconstraints(:, sizeindex);
latency = latency(:, sizeindex);
II = II(:, sizeindex);
TripCnt = TripCnt(:, sizeindex);


for i=1:numel(nsolves)
  scheduler = schedulerID{i};
  temp = nsolves{i};
  nsdcs_SDC(:,i) = temp(scheduler==0);
  nsdcs_ILP(:,i) = temp(scheduler==1);
  nsdcs_GA(:,i) = temp(scheduler==2);
  temp = steps{i};
  steps_SDC(:,i) = temp(scheduler==0);
  steps_ILP(:,i) = temp(scheduler==1);
  steps_GA(:,i) = temp(scheduler==2);
  temp = totaltime{i};
  total_SDC(:,i) = temp(scheduler==0);
  total_ILP(:,i) = temp(scheduler==1);
  total_GA(:,i) = temp(scheduler==2);
  temp = solvetime{i};
  solve_SDC(:,i) = temp(scheduler==0);
  solve_ILP(:,i) = temp(scheduler==1);
  solve_GA(:,i) = temp(scheduler==2);
  temp = nvariables{i};
  nvariables_SDC(:,i) = temp(scheduler==0);
  nvariables_ILP(:,i) = temp(scheduler==1);
  nvariables_GA(:,i) = temp(scheduler==2);
  temp = nconstraints{i};
  nconstraints_SDC(:,i) = temp(scheduler==0);
  nconstraints_ILP(:,i) = temp(scheduler==1);
  nconstraints_GA(:,i) = temp(scheduler==2);
  temp = latency{i};
  latency_SDC(:,i) = temp(scheduler==0);
  latency_ILP(:,i) = temp(scheduler==1);
  latency_GA(:,i) = temp(scheduler==2);
  temp = II{i};
  II_SDC(:,i) = temp(scheduler==0);
  II_ILP(:,i) = temp(scheduler==1);
  II_GA(:,i) = temp(scheduler==2);
  temp = TripCnt{i};
  TripCnt_SDC(:,i) = temp(scheduler==0);
  TripCnt_ILP(:,i) = temp(scheduler==1);
  TripCnt_GA(:,i) = temp(scheduler==2);
end

%looplabels
totalcycles_sdc = latency_SDC + II_SDC.*TripCnt_SDC;
totalcycles_ILP = latency_ILP + II_ILP.*TripCnt_ILP;
totalcycles_GA = latency_GA + II_GA.*TripCnt_GA;
[~, ncol] = size(total_SDC);

for i=1:ncol
  maxim = max(steps_SDC(:,i));
  minim = min(steps_SDC(:,i));
  steps_SDC(:,i) = 100*(steps_SDC(:,i)-minim)/(maxim-minim);
  maxim = max(steps_ILP(:,i));
  minim = min(steps_ILP(:,i));
  steps_ILP(:,i) = 100*(steps_ILP(:,i)-minim)/(maxim-minim);
  maxim = max(steps_GA(:,i));
  minim = min(steps_GA(:,i));
  steps_GA(:,i) = 100*(steps_GA(:,i)-minim)/(maxim-minim);

  maxim = max([totalcycles_sdc(:,i); totalcycles_ILP(:,i); totalcycles_GA(:,i)]);
  minim = min([totalcycles_sdc(:,i); totalcycles_ILP(:,i); totalcycles_GA(:,i)]);

  savemax(i) = maxim;

  savemin(i) = min([totalcycles_sdc(II_SDC(:, i)>0, i); totalcycles_ILP(:,i); totalcycles_GA(:,i)]);

  if(maxim-minim == 0)
    totalcycles_sdc(:,i) = zeros(size(totalcycles_sdc(:,i)));
    totalcycles_ILP(:,i) = zeros(size(totalcycles_ILP(:,i)));
    totalcycles_GA(:,i) = zeros(size(totalcycles_GA(:,i)));
  else
    totalcycles_sdc(:,i) = 100*(totalcycles_sdc(:,i))/(maxim);
    totalcycles_ILP(:,i) = 100*(totalcycles_ILP(:,i))/(maxim);
    totalcycles_GA(:,i) = 100*(totalcycles_GA(:,i))/(maxim);
  end
end

totalcycles_sdc(II_SDC == 0) = inf;
totalcycles_ILP(II_ILP == 0) = inf;
totalcycles_GA(II_GA == 0) = inf;

%get the version of the benchmark
parts = strsplit(char(arg_list(1)), '/');
if(numel(parts)>1)
  partname = parts(end-1);
else
  partname = 'emptypart'
end

for i=1:numel(nsolves)
  fighandle = figure(i);hold on;
  plot(steps_SDC(:,i), totalcycles_sdc(:,i), '-k*');
  plot(steps_ILP(:,i), totalcycles_ILP(:,i), '-r^');
  plot(steps_GA(:,i), totalcycles_GA(:,i), '-bs');
  title(looplabels(i));

  legend('SDC', 'ILP', 'GA');
  xlabel('Time (%)');
  ylabel(strcat('Total number os cycles (%) - min: ', num2str(savemin(i)), ' max: ', num2str(savemax(i))));
  graphname = strcat('../build/plots/', partname, '_', looplabels(i), '.jpg');
  print(fighandle, char(graphname), '-djpg');
  hold off;
end
pause();
