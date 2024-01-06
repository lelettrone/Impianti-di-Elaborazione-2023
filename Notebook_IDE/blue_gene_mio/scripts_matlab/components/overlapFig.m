% load saved figures
fig1   = hgload('R63.fig');
fig2   = hgload('R62.fig');
fig3   = hgload('R57.fig');
fig4   = hgload('R56.fig');
fig5   = hgload('R46.fig');
fig6   = hgload('R03.fig');
fig7   = hgload('R12.fig');
fig8   = hgload('R71.fig');
%  Prepare 'subplot'
figure
h1=subplot(1,1,1);

copyobj(allchild(get(fig1,'CurrentAxes')),h1);
hold on
copyobj(allchild(get(fig2,'CurrentAxes')),h1);
copyobj(allchild(get(fig3,'CurrentAxes')),h1);
copyobj(allchild(get(fig4,'CurrentAxes')),h1);
copyobj(allchild(get(fig5,'CurrentAxes')),h1);
copyobj(allchild(get(fig6,'CurrentAxes')),h1);
copyobj(allchild(get(fig7,'CurrentAxes')),h1);
copyobj(allchild(get(fig8,'CurrentAxes')),h1);