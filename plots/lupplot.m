a = importdata('DetailedLegUPTiming', '\t', 1);

[name, ~, j] = unique(a.textdata(2:end));
[nfunc, ~] = size(name);
[n, ~] = size(a.data);
alloctime = zeros(nfunc, 1);
schedtime = zeros(nfunc, 1);
binditime = zeros(nfunc, 1);

for i=1:n
  alloctime(j(i)) += a.data(i,1);
  schedtime(j(i)) += a.data(i,2);
  binditime(j(i)) += a.data(i,3);
end

alloctime = alloctime/n
schedtime = schedtime/n
binditime = binditime/n
