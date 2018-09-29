names = cellstr(['ILP*'; 'ILP-10'; 'GA-3'; 'GA-2'; 'GA-1'; 'GA-0.5'; 'NIS'; 'NIS-DFS'])
latency = [ 70    73    83    88    91    93   104   154]
alm = [5063   5055   5282   5292   5338   5381   5494   6426]
reg = [15201   15332   16216   16491   16530   16646   17242   19273]
freq = [238.04   265.46   211.60   279.96   262.67   273.45   284.25   245.88]
[~, idx] = sort(latency)

ws = get(gcf,"Position")
set(gcf,"Position", [ws(1), ws(2), 3*ws(3), ws(4)])
fid = figure(1);

subplot(1,3,1);
hold on;
plot(latency(1:2), alm(1:2), '*r')
plot(latency(3:6), alm(3:6), 'sb')
plot(latency(7:8), alm(7:8), '^k')
text(latency, alm, names)
xlabel('latency')
ylabel('ALMs')
hold off;

subplot(1,3,2);
hold on;
plot(latency(1:2), reg(1:2), '*r')
plot(latency(3:6), reg(3:6), 'sb')
plot(latency(7:8), reg(7:8), '^k')
text(latency, reg, names)
xlabel('latency')
ylabel('Regs')
hold off;

subplot(1,3,3);
hold on;
plot(latency(1:2), freq(1:2), '*r')
plot(latency(3:6), freq(3:6), 'sb')
plot(latency(7:8), freq(7:8), '^k')
text(latency, freq, names)
xlabel('latency')
ylabel('Fmax (MHz)')
hold off;


pause();
return;
