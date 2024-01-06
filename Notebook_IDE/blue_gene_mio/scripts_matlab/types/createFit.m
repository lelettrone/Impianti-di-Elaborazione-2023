function [fitresult, gof] = createFit(t, emprel, s)
%CREATEFIT1(T,EMPREL)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input: t
%      Y Output: emprel
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 15-Dec-2022 18:08:25


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( t, emprel );

% Set up fittype and options.
ft = fittype( 'exp2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [1.20933601209764 -2.78831690516957e-05 -0.675158080252523 -2.12032438196501e-05];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
fitresult
% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
%h = plot( fitresult, xData, yData );
h = plot( xData, yData );
legend( h, 'emprel vs. t', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 't', 'Interpreter', 'none' );
ylabel( 'emprel', 'Interpreter', 'none' );
grid on
fi = char(s);
fi
hgsave(fi) 


