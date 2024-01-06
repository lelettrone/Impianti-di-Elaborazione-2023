clc
clear all

[index, names] = xlsread('./names.xls');

filename = strcat('tempi_int', names(1), '.txt')
filename = char(filename)

tempi = importdata(filename);

[y,t] = cdfcalc(tempi);
empttf = y(2:size(y,1));
emprel = 1 - empttf;

%% Kstest


[xData, yData] = prepareCurveData( t, emprel );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( xData, yData );
legend( h, 'emprel vs. t', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 't', 'Interpreter', 'none' );
ylabel( 'emprel', 'Interpreter', 'none' );
grid on
hgsave("tg-c401")

f = fittedmodel.a*exp(fittedmodel.b*t);

[h,p,k] = kstest2(emprel, f, 'Alpha',0.05);




