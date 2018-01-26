function P = Power(x)

N = length(x)
P = 0;

for n = 1:N
    P = P + ((x(n))^2)/N;
end
end

