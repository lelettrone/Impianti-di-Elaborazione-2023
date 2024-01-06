%1
t = linspace(0,3000)

y1 = exp(-0.00211*t) + exp(-0.00125*t) - exp(-0.00336*t);
y2 = exp(-0.00211*t) + exp(-0.00125*t) - exp(-0.00225*t);

figure(1);
plot(t,y1, 'b', t,y2,'r')
legend({'configurazione 1', 'configurazione 2'})

%2
t = linspace(0,3000)

y1 = exp(-0.00125*t) + exp(-0.00222*t) - exp(-0.00236*t)
y2 = exp(-0.00111*t) 

figure(2);
plot(t,y1, 'b', t,y2,'r')
legend({'configurazione 1', 'configurazione 2'})

%3
t = linspace(0,3000)

y1 = exp(-0.00139*t) + exp(-0.00236*t) - exp(-0.00250*t)
y2 = exp(-0.00125*t) 

figure(3);
plot(t,y1, 'b', t,y2,'r')
legend({'configurazione 1', 'configurazione 2'})

%4
t = linspace(0,3000)

y1 = exp(-0.00111*t) + exp(-0.00125*t) - exp(-0.00236*t)
y2 = exp(-0.00111*t) 

figure(4);
plot(t,y1, 'b', t,y2,'r')
legend({'configurazione 1', 'configurazione 2'})