function X = IDFTmatrix(N)

% Calculates the Inverse Discrete Fourier Transform matrix.

for n=0:(N-1)
    for k=0:(N-1)
        X(n+1)=X(n+1)+(Xk(k+1)*exp(i*2*pi*k*n/N));
    end
end