clc
clear all

[index, names] = xlsread('./names.xls');
names = names(2:end,1);

h_array = zeros(length(names));
p_array = zeros(length(names));
k_array = zeros(length(names));

for i = 1:length(names)
    filename = strcat('tempi_int', names(i), '.txt')
    filename = char(filename)
    
    tempi = importdata(filename);

    [y,t] = cdfcalc(tempi);
    empttf = y(2:size(y,1));
    emprel = 1 - empttf;

    [fittedmodel, goodness] = createFit(t, emprel, names(i),i)

    f = fittedmodel.a*exp(fittedmodel.b*t)+ fittedmodel.c*exp(fittedmodel.d*t);

    [h,p,k] = kstest2(emprel, f, 'Alpha',0.05);
    h_array(i) = h;
    p_array(i) = p;
    k_array(i) = k;

end

