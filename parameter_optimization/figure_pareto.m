close all;

figure(1);
scatter(f(:,1),f(:,2),'pentagram','r');

figure(2);

scatter(f(:,1),f(:,2),'pentagram','k');
hold on;
scatter(f1(:,1),f1(:,2),'pentagram','r');
hold on;
scatter(f2(:,1),f2(:,2),'pentagram','b');
hold on
scatter(f3(:,1),f3(:,2),'pentagram','k');

% figure(3);
% scatter(f(:,2),f(:,3),'pentagram','r');
% xlabel('EC');ylabel('ITAE');
% figure(4)
% scatter3(f(:,1),f(:,2),f(:,3),'pentagram','r');
% scatter(f1(:,1),f1(:,2),'pentagram','r');
% hold on;
% scatter(f2(:,1),f2(:,2),'pentagram','b');
% hold on;
% scatter(f3(:,1),f3(:,2),'pentagram','g');
%'pentagram' �� 'p'	����ǣ�����Σ� 'hexagram' �� 'h'(������)
% figure(1);
% 
% plot(s(:,2),ds(:,2),'r','linewidth',1.5);