function X = DFTsum(x)

% Calculates the Discrete Fourier Transform (DFT).

N = length(x);
X = zeros(1,N);

for n=0:(N-1)
    for k=0:(N-1)
        X(n+1) = X(n+1) + x(k+1)*exp(-i*2*pi*n*k/N);
    end;
end;
