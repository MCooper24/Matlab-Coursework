function [X,f] =DFTSamples (x,fs)

N = length(x);

X = DFTsum(x);

for k = 1:N
    f(k) = (k-1)*fs/N;
end
end

