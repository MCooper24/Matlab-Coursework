function [X,f] = DFTSamples (x,fs)

% Modified DFTsamples function (question 13 only).

N = length(x);
X = DFTsum(x);

for k = 1:N
    f(k) = (k-1)*fs/N;
end