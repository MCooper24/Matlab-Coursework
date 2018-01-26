function P = HOMERfunction(x)

% Signal power equation (question 15 only).

N = length(x)
P = 0;

for n = 1:N
    P = P + (x((n))^2)/N;
end
end