
set(gcf,'position',[500,100,527,416],'PaperPositionMode','auto');%设计图窗大小
set(gcf,'color','w');%设置图窗颜色为白色
% tou1: AGSTA    tou2: AGSTA+ATD    tou3: proposed

lw=1.2; FS=8; LW=1.2; latex_size=10;
l=0.40; w=0.23; l1=0.08; l2=0.57; left3=0.71; h1=0.69; h2=0.38; h3=0.072;
% l=0.42; w=0.24; l1=0.06; l2=0.56; left3=0.71; h1=0.69; h2=0.38; h3=0.06;
c1=[0,113,189]/255;
c2=[217,82,24]/255;
c3=[0,113,189]/255;

subplot(321);
set(gca,'Position',[l1,  h1,  l, w]);
p1=plot( s_p(:,1),ds_p(:,1)); p1_axis=gca; 
set(p1,'DisplayName','Proposed','LineWidth',LW, 'Color',c3);
g = get(p1,'Parent');%对应p1所在的坐标轴
set(g,'Linewidth',lw,'FontSize',FS,'FontName','Helvetica','FontWeight','light');
xlabel('${{s}_{1}} $','Interpreter','latex','FontSize',latex_size);
ylabel('${{\dot{s}}_{1}} $','Interpreter','latex','FontSize',latex_size);
grid on;



% % % % % % % % % % % % % % % % 
subplot(322);
set(gca,'Position',[l2,  h1,  l,  w]);
p2=plot( s_p(:,2),ds_p(:,2),'linewidth',1.2 ); p2_axis=gca; 
set(p2,'LineWidth',LW, 'Color',c3);
g = get(p2,'Parent');%对应p1所在的坐标轴
set(g,'Linewidth',lw,'FontSize',FS,'FontName','Helvetica','FontWeight','light');
xlabel('${{s}_{2}} $','Interpreter','latex','FontSize',latex_size);
ylabel('${{\dot{s}}_{2}} $','Interpreter','latex','FontSize',latex_size);
grid on;

% % % % % % % % % % % % % 
subplot(323);
set(gca,'Position',[l1,  h2,  l,  w]);
p3=plot( s_p(:,3),ds_p(:,3),'linewidth',1.2 ); p3_axis=gca; 
set(p3,'LineWidth',LW, 'Color',c3);
g = get(p3,'Parent');%对应p1所在的坐标轴
set(g,'Linewidth',lw,'FontSize',FS,'FontName','Helvetica','FontWeight','light');
xlabel('${{s}_{3}} $','Interpreter','latex','FontSize',latex_size);
ylabel('${{\dot{s}}_{3}} $','Interpreter','latex','FontSize',latex_size);
grid on;



% % % % % % % % % % % % % % % 
subplot(324);
set(gca,'Position',[l2,  h2,  l,  w]);
p4=plot( s_p(:,4),ds_p(:,4),'linewidth',1.2 ); p4_axis=gca; 
set(p4,'LineWidth',LW, 'Color',c3);
g = get(p4,'Parent');%对应p1所在的坐标轴
set(g,'Linewidth',lw,'FontSize',FS,'FontName','Helvetica','FontWeight','light');
xlabel('${{s}_{4}} $','Interpreter','latex','FontSize',latex_size);
ylabel('${{\dot{s}}_{4}} $','Interpreter','latex','FontSize',latex_size);
grid on;


subplot(325);
set(gca,'Position',[l1,  h3,  l,  w]);
p5=plot(s_p(:,5),ds_p(:,5),'linewidth',1.2 ); p5_axis=gca; 
set(p5,'LineWidth',LW, 'Color',c3);
g = get(p5,'Parent');%对应p1所在的坐标轴
set(g,'Linewidth',lw,'FontSize',FS,'FontName','Helvetica','FontWeight','light');
xlabel('${{s}_{5}} $','Interpreter','latex','FontSize',latex_size);
ylabel('${{\dot{s}}_{5}} $','Interpreter','latex','FontSize',latex_size);
grid on;

% % % % % % % % % % % % % % % % % % 
subplot(326);
set(gca,'Position',[l2, h3,  l,  w]);
p6=plot(s_p(:,6),ds_p(:,6),'linewidth',1.2 ); p6_axis=gca; 
set(p6,'LineWidth',LW, 'Color',c3);
g = get(p6,'Parent');%对应p1所在的坐标轴
set(g,'Linewidth',lw,'FontSize',FS,'FontName','Helvetica','FontWeight','light');
xlabel('${{s}_{6}} $','Interpreter','latex','FontSize',latex_size);
ylabel('${{\dot{s}}_{6}} $','Interpreter','latex','FontSize',latex_size);
% legend(texlabel('psi_d'), texlabel('psi[Proposed]'), texlabel('psi[AGSTA]'));grid on;
grid on;



legend1 = legend(p1_axis,'show');
set(legend1,...
    'Position',[0.353137256584915 0.958036942795335 0.298627449297438 0.0361111101839275],...
    'Orientation','horizontal',...
    'Box','off',...
    'NumColumns',5);
% magnify


