load('../build/plots/verilogGen.mat');
nschedulers = 4;
%totaltime = totaltime;
load('../build/plots/sdcpipelinetotaltime.mat');
benchs = names;
sdctotalpipelinetime = totalpipelinetime;
pipelinensolve(1,:) = totalpipelinensolve;
pipelineii(1,:) = totalpipelineii;
pipelinenvar(1,:) = totalpipelinenvar;
pipelinencons(1,:) = totalpipelinencons;
pipelinelatency(1,:) = totalpipelinelatency;
pipelinetotalcycles(1,:) = totalpipelinetotalcycles;
pipelinetotaltime(1,:) = totalpipelinetime;
pipelinesolvetime(1,:) = solvepipelinetime;
load('../build/plots/ilppipelinetotaltime.mat');
ilptotalpipelinetime = totalpipelinetime;
pipelinensolve(2,:) = totalpipelinensolve;
pipelineii(2,:) = totalpipelineii;
pipelinenvar(2,:) = totalpipelinenvar;
pipelinencons(2,:) = totalpipelinencons;
pipelinelatency(2,:) = totalpipelinelatency;
pipelinetotalcycles(2,:) = totalpipelinetotalcycles;
pipelinetotaltime(2,:) = totalpipelinetime;
pipelinesolvetime(2,:) = solvepipelinetime;
load('../build/plots/gapipelinetotaltime.mat');
gatotalpipelinetime = totalpipelinetime;
pipelinensolve(3,:) = totalpipelinensolve;
pipelineii(3,:) = totalpipelineii;
pipelinenvar(3,:) = totalpipelinenvar;
pipelinencons(3,:) = totalpipelinencons;
pipelinelatency(3,:) = totalpipelinelatency;
pipelinetotalcycles(3,:) = totalpipelinetotalcycles;
pipelinetotaltime(3,:) = totalpipelinetime;
pipelinesolvetime(3,:) = solvepipelinetime;
load('../build/plots/nipipelinetotaltime.mat');
nitotalpipelinetime = totalpipelinetime;
pipelinensolve(4,:) = totalpipelinensolve;
pipelineii(4,:) = totalpipelineii;
pipelinenvar(4,:) = totalpipelinenvar;
pipelinencons(4,:) = totalpipelinencons;
pipelinelatency(4,:) = totalpipelinelatency;
pipelinetotalcycles(4,:) = totalpipelinetotalcycles;
pipelinetotaltime(4,:) = totalpipelinetime;
pipelinesolvetime(4,:) = solvepipelinetime;

afterReading = 1;
pipelinetotaltime;
pipelinesolvetime;

loopsizes;
looplabels = looplabels(2:end,:);

benchnames = cell();
for i=1:numel(benchs)
  parts = strsplit(char(benchs(i)), '/');
  benchnames(i) = parts(3);
end

benchnames;
[~, fileindex] = sort(totalloopsizes);
totalloopsizes = totalloopsizes(fileindex);

benchnames
benchnames = {'ac', 'ai', '2x ai', '4x ai', 'cp', 'cv', 'dv', 'fat', 'ft', 'gp', 'j2', 'mt', 'rc', 'rs', 'sh'};
benchnames = benchnames(fileindex)

filesizes = filesizes(fileindex);
totaltime = totaltime(fileindex);
sdctotalpipelinetime = sdctotalpipelinetime(fileindex);
ilptotalpipelinetime = ilptotalpipelinetime(fileindex);
gatotalpipelinetime = gatotalpipelinetime(fileindex);

pipelinensolve(1,:) = pipelinensolve(1,fileindex);
pipelineii(1,:) = pipelineii(1,fileindex);
pipelinenvar(1,:) = pipelinenvar(1,fileindex);
pipelinencons(1,:) = pipelinencons(1,fileindex);
pipelinelatency(1,:) = pipelinelatency(1,fileindex);
pipelinetotalcycles(1,:) = pipelinetotalcycles(1,fileindex);
pipelinetotaltime(1,:) = pipelinetotaltime(1,fileindex);
pipelinesolvetime(1,:) = pipelinesolvetime(1,fileindex);

pipelinensolve(2,:) = pipelinensolve(2,fileindex);
pipelineii(2,:) = pipelineii(2,fileindex);
pipelinenvar(2,:) = pipelinenvar(2,fileindex);
pipelinencons(2,:) = pipelinencons(2,fileindex);
pipelinelatency(2,:) = pipelinelatency(2,fileindex);
pipelinetotalcycles(2,:) = pipelinetotalcycles(2,fileindex);
pipelinetotaltime(2,:) = pipelinetotaltime(2,fileindex);
pipelinesolvetime(2,:) = pipelinesolvetime(2,fileindex);

pipelinensolve(3,:) = pipelinensolve(3,fileindex);
pipelineii(3,:) = pipelineii(3,fileindex);
pipelinenvar(3,:) = pipelinenvar(3,fileindex);
pipelinencons(3,:) = pipelinencons(3,fileindex);
pipelinelatency(3,:) = pipelinelatency(3,fileindex);
pipelinetotalcycles(3,:) = pipelinetotalcycles(3,fileindex);
pipelinetotaltime(3,:) = pipelinetotaltime(3,fileindex);
pipelinesolvetime(3,:) = pipelinesolvetime(3,fileindex);

pipelinensolve(4,:) = pipelinensolve(4,fileindex);
pipelineii(4,:) = pipelineii(4,fileindex);
pipelinenvar(4,:) = pipelinenvar(4,fileindex);
pipelinencons(4,:) = pipelinencons(4,fileindex);
pipelinelatency(4,:) = pipelinelatency(4,fileindex);
pipelinetotalcycles(4,:) = pipelinetotalcycles(4,fileindex);
pipelinetotaltime(4,:) = pipelinetotaltime(4,fileindex);
pipelinesolvetime(4,:) = pipelinesolvetime(4,fileindex);

%-------------------------------------------------------------------------------
%-------------------------------print tables for latex -------------------------
%-------------------------------------------------------------------------------
ns = nschedulers;
bn = [benchnames "geomean" "ratio"];
tab1 = fopen('../build/plots/tab1.txt', 'w');
t1values = [pipelinensolve(1:ns,:)', pipelinenvar(1:ns,:)', pipelinencons(1:ns,:)'];
%add geomean
t1values(end+1,:) = geomean(t1values);
t1values(end+1,1:ns) = t1values(end,1:ns)/t1values(end,1);
t1values(end,ns+1:2*ns) = t1values(end-1,ns+1:2*ns)/t1values(end-1,ns+1);
t1values(end,2*ns+1:3*ns) = t1values(end-1,2*ns+1:3*ns)/t1values(end-1,2*ns+1);
%t1values(end,10:12) = t1values(end-1,10:12)/t1values(end-1,10)

for row=1:numel(bn)
  fprintf(tab1, "%s", bn{row});
  for col=1:3*ns
    fprintf(tab1, " & %.2f", t1values(row, col));
  end
  fprintf(tab1, " \\\\\\hline\n");
end

tab2 = fopen('../build/plots/tab2.txt', 'w');
t2values = [pipelineii(1:ns,:)', pipelinelatency(1:ns,:)', pipelinetotalcycles(1:ns,:)', pipelinesolvetime(1:ns,:)']

t2values(end+1,:) = geomean(t2values);
t2values(end+1,1:ns) = t2values(end,1:ns)/t2values(end,1);
t2values(end,ns+1:2*ns) = t2values(end-1,ns+1:2*ns)/t2values(end-1,ns+1);
t2values(end,2*ns+1:3*ns) = t2values(end-1,2*ns+1:3*ns)/t2values(end-1,2*ns+1);
t2values(end,3*ns+1:4*ns) = t2values(end-1,3*ns+1:4*ns)/t2values(end-1,3*ns+1);
%t2values(end,13:15) = t2values(end-1,13:15)/t2values(end-1,13)

for row=1:numel(bn)
  fprintf(tab2, "%s", bn{row});
  for col=1:4*ns
    if(col == 4*ns)
      fprintf(tab2, " & %.2e", t2values(row, col));
    else
      fprintf(tab2, " & %.2f", t2values(row, col));
    end
  end
  fprintf(tab2, " \\\\\\hline\n");
end

fclose(tab1);
fclose(tab2);
return;
%pipelinetotaltime

%-------------------------------------------------------------------------------
%-------------------------------print useless plots ----------------------------
%-------------------------------------------------------------------------------

afterSorting = 1;
pipelinetotaltime;
pipelinesolvetime;
(pipelinetotaltime-pipelinesolvetime)>0;

sdct = (totaltime + sdctotalpipelinetime)./totaltime;
ilpt = (totaltime + ilptotalpipelinetime)./totaltime;
gat = (totaltime + gatotalpipelinetime)./totaltime;
nit = (totaltime + nitotalpipelinetime)./totaltime;

ga_speed_up = sdct./gat;
ni_speed_up = sdct./nit;
nsplit = 2;
nbenches = numel(sdct);

fighandle = figure(1); hold on;
bar(1:nbenches-nsplit, [sdct(1:end-nsplit);ilpt(1:end-nsplit);gat(1:end-nsplit);nit(1:end-nsplit)]');
plot([0 nbenches-nsplit+.5], [1 1], '-k');
xlim([0 nbenches+1]);
set(gca, 'XTick', []);
ylabel ('pipeline+compilation scale');
ax1 = gca

hax = axes();
bar(nbenches-nsplit+1:nbenches, [sdct(end-nsplit+1:end);ilpt(end-nsplit+1:end);gat(end-nsplit+1:end);nit(end-nsplit+1:end)]');
hold on;
plot([nbenches-nsplit+.5, nbenches+1], [1 1], '-k');
plot([nbenches-nsplit+.5 nbenches-nsplit+.5],[0 1.025*max(max([sdct;ilpt;gat;nit]))], 'r--');
axis("tight")
set (hax, "yaxislocation", "right", "color", "none", "xtick", []);
xlim([0 nbenches+1]);
ax2 = gca

%ysize = max(totalmean);
legend('SDCS', 'ILPS', 'GAS', 'NIS', 'no pipeline', 'location', 'northwest');
%xlabel ("\# LLVM IR instruction in loop body");
ylabel ('pipeline+compilation scale');
%ylim([0 10]);
xlim([0 numel(ilpt)+1]);
%text([1:numel(ilpt)]-0.275, sdct+0.05, benchnames, 'rotation', 90, 'fontsize', 12, 'interpreter', 'none');
axis("tic", "labely");
set(gca, 'XTick', 1:numel(ilpt));
set(gca, 'XTickLabel', benchnames);
%set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', 'compare','_pipe_verilog.jpg');
print(fighandle, char(graphname), '-djpg');
%clf(fighandle);
hold off;

[~,files] = size(pipelinensolve);
for i=2:nschedulers
  pipelinensolve(i,:) = pipelinensolve(i,:)./pipelinensolve(1,:);
  pipelinenvar(i,:) = pipelinenvar(i,:)./pipelinenvar(1,:);
  pipelinencons(i,:) = pipelinencons(i,:)./pipelinencons(1,:);
  pipelinelatency(i,:) = pipelinelatency(i,:)./pipelinelatency(1,:);
  pipelinetotalcycles(i,:) = pipelinetotalcycles(i,:)./pipelinetotalcycles(1,:);
  pipelinetotaltime(i,:) = pipelinetotaltime(i,:)./pipelinetotaltime(1,:);
  pipelinesolvetime(i,:) = pipelinesolvetime(i,:)./pipelinesolvetime(1,:);
end

pipelinensolve(1,:) = ones(1, files);
pipelinenvar(1,:) = ones(1, files);
pipelinencons(1,:) = ones(1, files);
pipelinelatency(1,:) = ones(1, files);
pipelinetotalcycles(1,:) = ones(1, files);
pipelinetotaltime(1,:) = ones(1, files);
pipelinesolvetime(1,:) = ones(1, files);

fighandle = figure(2); %hold on;

subplot(3,1,1);
bar(pipelinensolve(2:nschedulers,:)');
legend('ILPS', 'GAS', 'NIS', 'location', 'northwest');
xlim([0 files+1]);
axis("tic", "labely");
set(gca, 'XTick', 1:files);
set(gca, 'XTickLabel', benchnames);
%text([1:files]-0.275, pipelinensolve(3,:)+0.05, benchnames, 'rotation', 45, 'fontsize', 12, 'interpreter', 'none');
ylabel("\# solves");
hold on;
plot([0 files+1], [1 1], 'k-');
hold off;
gca1 = gca;

subplot(3,1,2);
bar(pipelinenvar(2:nschedulers,:)');
ylabel("\# variables");
xlim([0 files+1]);
axis("tic", "labely");
set(gca, 'XTick', 1:files);
set(gca, 'XTickLabel', benchnames);
%text([1:files]-0.275, pipelinenvar(2,:)+0.05, benchnames, 'rotation', 90, 'fontsize', 12, 'interpreter', 'none');
legend('ILPS', 'GAS', 'NIS', 'location', 'northwest');
hold on;
plot([0 files+1], [1 1], 'k-');
hold off;
gca2 = gca;

subplot(3,1,3);
bar(pipelinencons(2:nschedulers,:)');
ylabel("\# constraints");
xlim([0 files+1]);
axis("tic", "labely");
set(gca, 'XTick', 1:files);
set(gca, 'XTickLabel', benchnames);
%text([1:files]-0.275, zeros(1,files)-0.05, benchnames, 'rotation', -90, 'fontsize', 12, 'interpreter', 'none');
legend('ILPS', 'GAS', 'NIS', 'location', 'northwest');
hold on;
plot([0 files+1], [1 1], 'k-');
hold off;
gca3 = gca;

in1 = get(gca1, 'TightInset');
in2 = get(gca2, 'TightInset');
in3 = get(gca3, 'TightInset');

newin1 = [in3(1) in1(2) in3(3) in1(4)];
newin2 = [in3(1) in2(2) in3(3) in2(4)];
newin3 = [in3(1) in3(2) in3(3) in3(4)];

set(gca1, 'LooseInset', newin1);
set(gca2, 'LooseInset', newin2);
set(gca3, 'LooseInset', newin3);

%newinset = [in1(1) in2(2) in2(3) in1(4)]
%set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', 'compare','_nvars.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

quality_of_results = 1-mean(pipelinelatency')
fighandle = figure(3);
subplot(2, 1, 1);
bar(pipelinelatency(2:nschedulers,:)');
legend('ILPS', 'GAS', 'NIS', 'location', 'northwest');
axis("tic", "labely");
set(gca, 'XTick', 1:files);
set(gca, 'XTickLabel', benchnames);
ylabel("pipeline latency");
xlim([0 files+1]);
hold on;
plot([0 files+1], [1 1], 'k-');
hold off;
gca1 = gca;


subplot(2, 1, 2);
bar(pipelinetotalcycles(2:nschedulers,:)');
legend('ILPS', 'GAS', 'NIS', 'location', 'northwest');
axis("tic", "labely");
set(gca, 'XTick', 1:files);
set(gca, 'XTickLabel', benchnames);
ylabel("total \# cycles");
xlim([0 files+1]);
hold on;
plot([0 files+1], [1 1], 'k-');
hold off;
gca2 = gca;

in1 = get(gca1, 'TightInset');
in2 = get(gca2, 'TightInset');

newin1 = [in2(1) in1(2) in2(3) in1(4)]
newin2 = [in2(1) in2(2) in2(3) in2(4)]

set(gca1, 'LooseInset', newin1);
set(gca2, 'LooseInset', newin2);

%set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', 'compare','_cycles.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

totaltimeGAspeedup = (pipelinetotaltime(3,:)./pipelinetotaltime(1,:)).^-1
totaltimeNIspeedup = (pipelinetotaltime(4,:)./pipelinetotaltime(1,:)).^-1
pipelinetotaltime;

fighandle = figure(4); hold on;
bar([pipelinetotaltime(2,:);pipelinesolvetime(2,:);pipelinetotaltime(3,:);pipelinesolvetime(3,:);pipelinetotaltime(4,:);pipelinesolvetime(4,:)]');
%ysize = max(totalmean);
legend('ILPS total', 'ILPS solve', 'GAS total', 'GAS solve', 'NIS total', 'NIS solve', 'location', 'northwest');
ylabel ('time (s)');
%ylim([0 10]);
xlim([0 files+1]);
axis("tic", "labely");
set(gca, 'XTick', 1:files);
set(gca, 'XTickLabel', benchnames);
hold on;
plot([0 files+1], [1 1], 'k-');
hold off;
set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', 'compare','_sched_times.jpg');
print(fighandle, char(graphname), '-djpg');
%clf(fighandle);
hold off;
pause();
return;


%-------------------------------------------------------------------------
%-------------------------------------------------------------------------
%------------the next plots are per loop
%-------------------------------------------------------------------------
%-------------------------------------------------------------------------
%-------------------------------------------------------------------------

load('../build/plots/pipeline.mat');
totaltime = zeros(6, numel(totalmean));
solvetime =  zeros(3, numel(nsdcsmean));
totalnsdcs = zeros(3, numel(nsdcsmean));
totalnvar = zeros(3, numel(nvariablesmean));
totalncons = zeros(3, numel(nconstraintsmean));
totallatency = zeros(3, numel(latencymean));
totalII = zeros(3, numel(IImean));
totaltotaltime = zeros(3, numel(totaltime_mean));

totaltime(1,:) = totalmean;
totaltime(2,:) = solvemean;
ysize = max(totalmean);
solvetime(1,:) = solvemean;
totalnsdcs(1,:) = nsdcsmean;
totalnvar(1,:) = nvariablesmean;
totalncons(1,:) = nconstraintsmean;
totallatency(1,:) = latencymean;
totalII(1,:) = IImean;
totaltotaltime(1,:) = totaltime_mean;
totalcycles_sdc = totaltime_mean;

load('../build/plots/ilp_pipeline.mat');
totaltime(3,:) = totalmean;
totaltime(4,:) = solvemean;
solvetime(2,:) = solvemean;
totalnsdcs(2,:) = nsdcsmean;
totalnvar(2,:) = nvariablesmean;
totalncons(2,:) = nconstraintsmean;
totallatency(2,:) = latencymean;
totalII(2,:) = IImean;
totaltotaltime(2,:) = totaltime_mean;
totalcycles_ilp = totaltime_mean;

load('../build/plots/ga_pipeline.mat');
totaltime(5,:) = totalmean;
totaltime(6,:) = solvemean;
ysize = max(ysize, totalmean);
solvetime(3,:) = solvemean;
totalnsdcs(3,:) = nsdcsmean;
totalnvar(3,:) = nvariablesmean;
totalncons(3,:) = nconstraintsmean;
totallatency(3,:) = latencymean;
totalII(3,:) = IImean;
totaltotaltime(3,:) = totaltime_mean;
totalcycles_ga = totaltime_mean;

%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%ilpprop = geomean(totaltime(1,:)./totaltime(3,:))
%gaprop = geomean(totaltime(1,:)./totaltime(5,:))


[~, cols] = size(totaltime);
nsplit = 2
ly = 400;
lx = 2*400;
fighandle = figure(5, 'Position',[0,0,lx,ly]); hold on;


totaltime
totaltime(3,:) = totaltime(3,:)./totaltime(1,:);
totaltime(4,:) = totaltime(4,:)./totaltime(2,:);
totaltime(5,:) = totaltime(5,:)./totaltime(1,:);
totaltime(6,:) = totaltime(6,:)./totaltime(2,:);
totaltime

bar(totaltime(3:6, 1:end-nsplit)');

divx = cols-nsplit+0.5;
y1ticks = get(gca, 'YTick');
plot([divx, divx], [y1ticks(1) y1ticks(end)], 'r--', "linewidth", 1.5);
xlim([0 cols+1]);
set(gca, 'XTick', []);
ylabel ("Time (s)");
hold on;
plot([0 cols-nsplit+.5], [1 1], 'k-');
hold off;
ax1 = gca

hax = axes();
v = cols-nsplit+1:cols;
bar(v, totaltime(3:6, end-nsplit+1:end)');
set (hax, "yaxislocation", "right", "color", "none", "xtick", [])

legend('ILPS total', 'ILPS solve', 'GAS total', 'GAS solve', 'location', 'northwest');
set(gca, 'XTick', 1:cols);
set(gca, 'XTickLabel', loopx(1:cols));
xlabel ("\# LLVM IR instruction in loop body");
ylabel ("Time (s)");
%ylim([0 max(max(totaltime(:, end-nsplit+1:end)))]);
xlim([0 cols+1]);

ax2 = gca
in1 = get(ax1,'TightInset')
in2 = get(ax2,'TightInset')
newinset = [in1(1) in2(2) in2(3) in1(4)]
set(ax1, 'LooseInset', newinset)
set(ax2, 'LooseInset', newinset)

graphname = strcat('../build/plots/', 'compare','_sdcschedtimes.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;


%ly = 10*100;
%lx = 5*100;
%fighandle = figure(2, 'Position',[0,0,lx,ly]); %hold on;
fighandle = figure(6); %hold on;
subplot(3,1,1);
%[ax, h1, h2] = plotyy(loopx, totalnsdcs, loopx, totalnvar)
totalnsdcs
totalnsdcs(2,:) = totalnsdcs(2,:)./totalnsdcs(1,:);
totalnsdcs(3,:) = totalnsdcs(3,:)./totalnsdcs(1,:);
totalnsdcs(1,:) = ones(1,cols);
totalnsdcs
bar(totalnsdcs(2:3,:)');
legend('ILPS', 'GAS', 'location', 'northwest');
set(gca, 'XTick', 1:cols);
set(gca, 'XTickLabel', loopx(1:cols));
ylabel("\# solves");
xlabel ("\# LLVM IR instruction in loop body");
hold on;
plot([0 cols+1], [1 1], 'k-');
hold off;
gca1 = gca;
%set(gca, 'LooseInset', get(gca,'TightInset'));
%graphname = strcat('../build/plots/', 'compare','_nsolves.jpg');
%print(fighandle, char(graphname), '-djpg');


totalnvar
totalncons
totalnvar(2,:) = totalnvar(2,:)./totalnvar(1,:);
totalnvar(3,:) = totalnvar(3,:)./totalnvar(1,:);
totalnvar(1,:) = ones(1, cols);
totalncons(2,:) = totalncons(2,:)./totalncons(1,:);
totalncons(3,:) = totalncons(3,:)./totalncons(1,:);
totalncons(1,:) = ones(1, cols);
totalnvar
totalncons

%fighandle = figure(3);

subplot(3,1,2);
bar(totalnvar(2:3,:)');
ylabel("\# variables");
set(gca, 'XTick', 1:cols);
set(gca, 'XTickLabel', loopx);
legend('ILPS', 'GAS', 'location', 'northwest');
hold on;
plot([0 cols+1], [1 1], 'k-');
hold off;
xlabel ("\# LLVM IR instruction in loop body");
gca2 = gca;

subplot(3,1,3);
bar(totalncons(2:3,:)');
ylabel("\# constraints");
set(gca, 'XTick', 1:cols);
set(gca, 'XTickLabel', loopx);
legend('ILPS', 'GAS', 'location', 'northwest');
hold on;
plot([0 cols+1], [1 1], 'k-');
hold off;
xlabel ("\# LLVM IR instruction in loop body");
gca3 = gca;

%set(gca1, 'LooseInset', get(gca2,'TightInset'));
%set(gca2, 'LooseInset', get(gca2,'TightInset'));

%[ax, h1, h2] = plotyy(loopx, totalnvar, loopx, totalncons)
%set(h1(1), "marker", '*', 'color', 'b');
%set(h1(2), "marker", 's', 'color', 'b');
%set(h1(3), "marker", 'o', 'color', 'b');
%set(h2(1), "marker", '*', 'color', 'r');
%set(h2(2), "marker", 's', 'color', 'r');
%set(h2(3), "marker", 'o', 'color', 'r');
%set(h1(1), "linestyle", '--', 'color', 'b');
%set(h1(2), "linestyle", '-', 'color', 'b');
%set(h1(3), "linestyle", '-.', 'color', 'b');
%set(h2(1), "linestyle", '--', 'color', 'r');
%set(h2(2), "linestyle", '-', 'color', 'r');
%set(h2(3), "linestyle", '-.', 'color', 'r');
%set(ax,{'ycolor'},{'b';'r'})
%legend('GAS \# variables', 'ILPS \# variables', 'SDCS \# variables', 'GAS \# constraints', 'ILPS \# constraints', 'SDCS \# constraints', 'location', 'northwest');
%ylabel("\# variables in formulation");

%ylabel (ax(1), "\# variables");
%ylabel (ax(2), "\# constraints");

%in1 = get(ax(1),'TightInset')
%in2 = get(ax(2),'TightInset')
%newinset = [in1(1) in2(2) in2(3) in1(4)]

%set(ax(1), 'LooseInset', newinset)
%set(ax(2), 'LooseInset', newinset)

in1 = get(gca1, 'TightInset');
in2 = get(gca2, 'TightInset');
in3 = get(gca3, 'TightInset');

newin1 = [in3(1) in1(2) in3(3) in1(4)];
newin2 = [in3(1) in2(2) in3(3) in2(4)];
newin3 = [in3(1) in3(2) in3(3) in3(4)];

set(gca1, 'LooseInset', newin1);
set(gca2, 'LooseInset', newin2);
set(gca3, 'LooseInset', newin3);

%newinset = [in1(1) in2(2) in2(3) in1(4)]
%set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', 'compare','_nvars.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;


%fighandle = figure(4); hold on;
%plot(loopx, totalncons(1,:), '-k*', loopx, totalncons(2,:), '-^r', loopx, totalncons(3,:), '-bs');
%bar(totalncons');
%legend('SDCS', 'ILPS', 'GAS', 'location', 'northwest');
%ylabel("\# constraints in formulation");
%xlabel ("\# LLVM IR instruction in loop body");
%set(gca, 'LooseInset', get(gca,'TightInset'));
%graphname = strcat('../build/plots/', 'compare','_nconstr.jpg');
%print(fighandle, char(graphname), '-djpg');
%hold off;

fighandle = figure(7);
subplot(2, 1, 1);
%errorbar(loopx, latencymean, latencystd, '-b+');
totallatency(totallatency==0) = 1;
totallatency(2,:) = totallatency(2,:)./totallatency(1,:);
totallatency(3,:) = totallatency(3,:)./totallatency(1,:);
totallatency(1,:) = ones(1,cols);
totallatency
bar(totallatency(2:3,:)');
legend('ILPS', 'GAS', 'location', 'northwest');
set(gca, 'XTick', 1:cols);
set(gca, 'XTickLabel', loopx);
%axis tight
ylabel("pipeline latency");
xlabel ("\# LLVM IR instruction in loop body");
hold on;
plot([0 cols+1], [1 1], 'k-');
hold off;
gca1 = gca;
%set(gca, 'LooseInset', get(gca,'TightInset'));
%graphname = strcat('../build/plots/', 'compare','_latency.jpg');
%print(fighandle, char(graphname), '-djpg');

%fighandle = figure(7); hold on;
%errorbar(loopx, totaltime_mean, totaltime_std, '-b+');
subplot(2, 1, 2);
totaltotaltime
totaltotaltime(2,:) = totaltotaltime(2,:)./totaltotaltime(1,:);
totaltotaltime(3,:) = totaltotaltime(3,:)./totaltotaltime(1,:);
totaltotaltime(1,:) = ones(1,cols);
totaltotaltime
bar(totaltotaltime(2:3,:)');
legend('ILPS', 'GAS', 'location', 'northwest');
set(gca, 'XTick', 1:cols);
set(gca, 'XTickLabel', loopx);
ylabel("total \# cycles");
xlabel ("\# LLVM IR instruction in loop body");
hold on;
plot([0 cols+1], [1 1], 'k-');
hold off;
gca2 = gca;

in1 = get(gca1, 'TightInset')
in2 = get(gca2, 'TightInset')

newin1 = [in2(1) in1(2) in2(3) in1(4)];
newin2 = [in2(1) in2(2) in2(3) in2(4)];

set(gca1, 'LooseInset', newin1)
set(gca2, 'LooseInset', newin2)

%set(gca, 'LooseInset', get(gca,'TightInset'));
graphname = strcat('../build/plots/', 'compare','_cycles.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;


%fighandle = figure(6); hold on;
%errorbar(loopx, IImean, IIstd, '-b+');
%bar(totalII');
%legend('SDC', 'ILP', 'GA', 'location', 'northwest');
%set(gca, 'XTick', 1:cols);
%set(gca, 'XTickLabel', loopx);
%ylabel("II");
%xlabel ("\# LLVM IR instruction in loop body");
%set(gca, 'LooseInset', get(gca,'TightInset'));
%graphname = strcat('../build/plots/', 'compare','_II.jpg');
%print(fighandle, char(graphname), '-djpg');
%hold off;


%fighandle = figure(9);hold on;
%plot(loopx, 100*(totalcycles_ilp-totalcycles_sdc)./totalcycles_sdc, '-+', loopx, 100*(totalcycles_ga-totalcycles_sdc)./totalcycles_sdc, '-s');
%plot(loopx, zeros(size(loopx)), '-k');
%legend('ilp x sdc', 'ga x sdc', 'location', 'northwest');
%set(gca, 'LooseInset', get(gca,'TightInset'));
%graphname = strcat('../build/plots/', 'compare','_diffs.jpg');
%print(fighandle, char(graphname), '-djpg');
%hold off;

pause();
return;
