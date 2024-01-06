clc
clear all

load './tempi_int.txt'

[y,t] = cdfcalc(tempi_int);
empttf = y(2:size(y,1));
emprel = 1 - empttf;

[fittedmodel, goodness] = createFit(t, emprel);

f = fittedmodel.a*exp(fittedmodel.b*t)+ fittedmodel.c*exp(fittedmodel.d*t);

[h,p,k] = kstest2(emprel, f, 'Alpha',0.05)