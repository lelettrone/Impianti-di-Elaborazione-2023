MTTF = 1400;

t = linspace(0,MTTF*2);

lam = 1/MTTF;
m = 5;
s = 3;
y1 = 1-(  1-exp(-s*lam*t)   ).^m
y2 = (1-(1-exp(-lam*t)).^m  ).^s

plot(t,y1, 'b', t,y2,'r')