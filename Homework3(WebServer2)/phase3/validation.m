clc
clear all

[txt,raw] = xlsread('validation.xlsx');

%numero di componenti principali
c_p = 10;
p_value= zeros(c_p,1);
h_value = ones(c_p,1);
for i=1:c_p
    x=txt(:,i);
    y=txt(:,i+c_p);
    [p,h]=ranksum(x,y);
    p_value(i)=p;
    h_value(i)=h;
end






