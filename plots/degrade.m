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
loopcnt = 0;
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
  loopcnt = loopcnt + nloops;
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


for i=1:loopcnt
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

totalcycles_sdc(II_SDC == 0) = inf;
totalcycles_ILP(II_ILP == 0) = inf;
totalcycles_GA(II_GA == 0) = inf;
total_SDC(II_SDC == 0) = 0;
total_ILP(II_ILP == 0) = 0;
total_GA(II_GA == 0) = 0;

%get the version of the benchmark
parts = strsplit(char(arg_list(1)), '/');
if(numel(parts)>1)
  partname = parts(end-1);
else
  partname = 'emptypart'
end


%plot(loopsizes(1:end-2),total_ILP(end,1:end-2), '*');
%pause();
%return;
%total_SDC
%total_ILP
%total_GA
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
[nbudgets, ~] = size(total_SDC);
sdc_total_time = sum(total_SDC);
sdc_total_cycles = totalcycles_sdc(end, :);

%calculates the average considering the points where the scheduler fails
for i=1:loopcnt
  nsucs = sum(II_SDC(:, i) ~= 0);
  sdc_total_time(:,i) = sdc_total_time(:,i)/nsucs;
end

for i=1:nbudgets
  GAtime_SDCtime(i, :) = 100*total_GA(i, :)./sdc_total_time;
  GAcycles_SDCcycles(i, :) = totalcycles_GA(i, :)./sdc_total_cycles;
end
%GAtime_SDCtime
%GAcycles_SDCcycles
leg = cell()
for i=1:numel(looplabels)
  parts = strsplit(looplabels{i}, ':');
  leg(i) = strrep(strcat(parts{1}, ':', num2str(loopsizes(i))), '_', ' ')
end

%sdc_total_cycles

fighandle = figure(1); hold on;
styles = {'r*','ks','bo','m^','m+','kx','kd','bv','r>','g<','bp','rh','m*','ks','ko','b^','r+','gx','bd','rv','m>','k<','kp','bh'}';
hdlY = plot(GAtime_SDCtime, GAcycles_SDCcycles, styles);
%text(loopx, nvariablesmean,  num2cell(timeoutmean));
[hleg1, hobj1] = legend(cellstr(leg), 'location','northeast');
legend boxoff
h=findobj(gcf,'type','axes','tag','legend');
Pos=get(h,'position')
ly = Pos(4);
scale = 0.55;
Pos(4)=scale*ly; % half the hight
Pos(2)=(1-scale)*ly+Pos(2); % half the hight
set(h,'position',Pos) % Implement it

legtitle = get(hleg1,'title');
set(legtitle, 'string','benchmark:# instructions');
xlabel("GA scheduler time / SDC scheduler time (\%)");
ylabel("Total \# cycles for GA scheduler / Total \# cycles for SDC scheduler");

set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', partname,'_speedup_x_proptime_ga_x_sdc.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

pause();
return;

speedup = 100./mean(GAtime_SDCtime)
%plot(loopsizes, speedup, styles(1));

GAcycles_SDCcycles
qualitymean = 10*mean(GAcycles_SDCcycles)
lo = floor(min(qualitymean))
up = ceil(max(qualitymean))
dist = ceil(up-lo)

leg = cell();
fighandle = figure(2); hold on;
for i=1:dist
  indexes = qualitymean>lo+i-1 & qualitymean<=lo+i
  plot(loopsizes(indexes), speedup(indexes), styles(i));
  leg(i) = strcat(num2str(10*(lo+i-1)), '% to ',num2str(10*(lo+i)), '%');
end

ylabel("SDC scheduler time/ GA scheduler time");
xlabel ("\# LLVM IR instruction in loop body");
[hleg1, hobj1] = legend(leg, 'location', 'northwest');
legtitle = get(hleg1,'title');
set(legtitle, 'string','GAxSDC quality');
set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', partname,'_nIR_x_speedUP.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;
pause();
return;


%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
for i=1:loopcnt
  fighandle = figure(i);hold on;
  plot(total_SDC(:,i), totalcycles_sdc(:,i), '-k*');
  plot(total_ILP(:,i), totalcycles_ILP(:,i), '-r^');
  plot(total_GA(:,i), totalcycles_GA(:,i), '-bs');
  xlim([min([total_SDC(:,i); total_ILP(:,i); total_GA(:,i)]) max([total_SDC(:,i); total_ILP(:,i); total_GA(:,i)])]);
  title(strcat(looplabels(i), ' - ', num2str(loopsizes(i)), ' instructions'));

  legend('SDC', 'ILP', 'GA');
  xlabel('Time (s)');
  ylabel('Total number os cycles');
  %ylabel(strcat('Total number os cycles (%) - min: ', num2str(savemin(i)), ' max: ', num2str(savemax(i))));
  graphname = strcat('../build/plots/', partname, '_', looplabels(i), '.jpg');
  print(fighandle, char(graphname), '-djpg');
  hold off;
end
pause();
