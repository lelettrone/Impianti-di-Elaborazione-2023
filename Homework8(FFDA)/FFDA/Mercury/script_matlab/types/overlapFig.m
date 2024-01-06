% load saved figures
fig1   = hgload('computation.fig');
fig2   = hgload('master.fig');
fig3   = hgload('storage.fig');
fig4   = hgload('login.fig');
fig5   = hgload('sistema.fig');
%  Prepare 'subplot'
figure
h1=subplot(1,1,1);
h2=subplot(1,1,1);
h3=subplot(1,1,1);
h4=subplot(1,1,1);
copyobj(allchild(get(fig1,'CurrentAxes')),h1);
hold on
copyobj(allchild(get(fig2,'CurrentAxes')),h1);
copyobj(allchild(get(fig3,'CurrentAxes')),h1);
copyobj(allchild(get(fig4,'CurrentAxes')),h1);
copyobj(allchild(get(fig5,'CurrentAxes')),h1);