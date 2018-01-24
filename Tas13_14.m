load nspeech1.mat

soundsc(nspeech1)

[X, f] = DTFTsamples(nspeech1, 8192);
figure(5)
f = round(f);
stem(f,abs(X))
Y = ifft(X);
sounds(abs(Y))