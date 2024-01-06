% load saved figures
fig1   = hgload('bluegene.fig');
fig2   = hgload('I-O.fig');
fig3   = hgload('computation.fig');
%  Prepare 'subplot'
figure
h1=subplot(1,1,1);

copyobj(allchild(get(fig1,'CurrentAxes')),h1);
hold on
copyobj(allchild(get(fig2,'CurrentAxes')),h1);
copyobj(allchild(get(fig3,'CurrentAxes')),h1);

