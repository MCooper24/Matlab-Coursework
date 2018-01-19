function X = DFTmatrix(x)

% Calculates the Discrete Fourier Transform and plots as a matrix.

N = length(x);
X = zeros(1,N);

for n=0:(N-1)
    for k=0:(N-1)
        X(n+1,k+1)=cos((2*pi*n*k)/N)-1i*sin((2*pi*n*k)/N);
    end;
end;