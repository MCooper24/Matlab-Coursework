[s,Fs] = audioread ('noisyhomer.wave')
N = length(s);

soundsc(s,Fs);

figure(6)
subplot(2,1,1)
stem(s)

[v,fs] = audioread('homer.wav')
subplot(2,1,2)
stem(v)

Pnoise = Power (s);
Psig Power (v);

SNR 10*log10(Psi/Pnoise);