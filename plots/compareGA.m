load('../build/plots/pipeline.mat');
fighandle = figure(1); hold on;
errorbar(loopx, totalmean, totalstd, '-b+');
errorbar(loopx, solvemean, solvestd, '-b+');
ysize = max(totalmean);
hold off;

fighandle = figure(2); hold on;
errorbar(loopx, nsdcsmean, nsdcsstd, '-b+');
hold off;

fighandle = figure(3); hold on;
errorbar(loopx, nvariablesmean, nvariablesstd, '-b+');
hold off;

fighandle = figure(4); hold on;
errorbar(loopx, nconstraintsmean, nconstraintsstd, '-b+');
hold off;

fighandle = figure(5); hold on;
errorbar(loopx, latencymean, latencystd, '-b+');
hold off;

fighandle = figure(6); hold on;
errorbar(loopx, IImean, IIstd, '-b+');
hold off;

fighandle = figure(7); hold on;
errorbar(loopx, totaltime_mean, totaltime_std, '-b+');
totalcycles_sdc = totaltime_mean;
hold off;

load('../build/plots/ilp_pipeline.mat');
fighandle = figure(1); hold on;
errorbar(loopx, totalmean, totalstd, '-b*');
errorbar(loopx, solvemean, solvestd, '-b*');
hold off;

fighandle = figure(2); hold on;
errorbar(loopx, nsdcsmean, nsdcsstd, '-b*');
hold off;

fighandle = figure(3); hold on;
errorbar(loopx, nvariablesmean, nvariablesstd, '-b*');
hold off;

fighandle = figure(4); hold on;
errorbar(loopx, nconstraintsmean, nconstraintsstd, '-b*');
hold off;

fighandle = figure(5); hold on;
errorbar(loopx, latencymean, latencystd, '-b*');
hold off;

fighandle = figure(6); hold on;
errorbar(loopx, IImean, IIstd, '-b*');
hold off;

fighandle = figure(7); hold on;
errorbar(loopx, totaltime_mean, totaltime_std, '-b*');
totalcycles_ilp = totaltime_mean;
hold off;

load('../build/plots/ga_pipeline.mat');
fighandle = figure(1); hold on;
errorbar(loopx, totalmean, totalstd, '-b^');
errorbar(loopx, solvemean, solvestd, '-b^');
ysize = max(ysize, totalmean);
hold off;

fighandle = figure(2); hold on;
errorbar(loopx, nsdcsmean, nsdcsstd, '-b^');
hold off;

fighandle = figure(3); hold on;
errorbar(loopx, nvariablesmean, nvariablesstd, '-b^');
hold off;

fighandle = figure(4); hold on;
errorbar(loopx, nconstraintsmean, nconstraintsstd, '-b^');
hold off;

fighandle = figure(5); hold on;
errorbar(loopx, latencymean, latencystd, '-b^');
hold off;

fighandle = figure(6); hold on;
errorbar(loopx, IImean, IIstd, '-b^');
hold off;

fighandle = figure(7); hold on;
errorbar(loopx, totaltime_mean, totaltime_std, '-b^');
totalcycles_ga = totaltime_mean;
hold off;
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------

fighandle = figure(1); hold on;
legend('SDC total', 'SDC solve', 'ILP total', 'ILP solve', 'GA total', 'GA solve');
xlabel ("\# LLVM IR instruction in loop body");
ylabel ("Time (s)");
ylim([0 ysize]);
graphname = strcat('../build/plots/', 'compare','_sdcschedtimes.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(2); hold on;
legend('SDC', 'ILP', 'GA');
ylabel("\# solves");
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', 'compare','_nsolves.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(3); hold on;
legend('SDC', 'ILP', 'GA');
ylabel("\# variables in formulation");
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', 'compare','_nvars.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(4); hold on;
legend('SDC', 'ILP', 'GA');
ylabel("\# constraints in formulation");
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', 'compare','_nconstr.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(5); hold on;
legend('SDC', 'ILP', 'GA');
ylabel("pipeline latency");
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', 'compare','_latency.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(6); hold on;
legend('SDC', 'ILP', 'GA');
ylabel("II");
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', 'compare','_II.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(7); hold on;
legend('SDC', 'ILP', 'GA');
ylabel("total cycles");
xlabel ("\# LLVM IR instruction in loop body");
graphname = strcat('../build/plots/', 'compare','_cycles.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;

fighandle = figure(8);hold on;
plot(loopx, 100*(totalcycles_ilp-totalcycles_sdc)./totalcycles_sdc, '-+', loopx, 100*(totalcycles_ga-totalcycles_sdc)./totalcycles_sdc, '-s');
plot(loopx, zeros(size(loopx)), '-k');
legend('ilp x sdc', 'ga x sdc');
graphname = strcat('../build/plots/', 'compare','_diffs.jpg');
print(fighandle, char(graphname), '-djpg');
hold off;
