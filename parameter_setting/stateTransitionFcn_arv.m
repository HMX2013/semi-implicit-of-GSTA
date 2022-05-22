function xNew = stateTransitionFcn_arv(x)

Ts=0.01;
fa=x(4); th=x(5); psi=x(6);

J=[cos(psi)*cos(th), cos(psi)*sin(th)*sin(fa)-sin(psi)*cos(fa), sin(psi)*sin(fa)+cos(psi)*cos(fa)*sin(th),0,0,0;
   sin(psi)*cos(th), cos(psi)*cos(fa)+sin(fa)*sin(th)*sin(psi),sin(th)*sin(psi)*cos(fa)-cos(psi)*sin(fa),0,0,0;
   -sin(th), cos(th)*sin(fa), cos(th)*cos(fa),0,0,0;
   0,0,0,1,sin(fa)*tan(th),cos(fa)*tan(th);
   0,0,0,0,cos(fa),-sin(fa);
   0,0,0,0,sin(fa)*sec(th),cos(fa)*sec(th)];  

% v_kp1=vx+Ts*inv(0.8*Mv)*(u-0.8*Cv*vx-0.7*Dv*vx-0.8*gv);
% eta_kp1= eta+Ts*J*vx;
% v_kp1=vx;
% 
% x=[eta_kp1; v_kp1]+G*w;
% G=1*diag([0 0 0 0 0 0 1 1 1 1 1 1]);
% G=1*diag([1 1 1 1 1 1 0 0 0 0 0 0]);
% G=1*diag([1 1 1 1 1 1 1 1 1 1 1 1]);

A=[eye(6),Ts*J; zeros(6),eye(6)];

xNew=A*x;

end

