function [sys,x0,str,ts] = edis(t,x,u,flag)
switch flag
case 0
    [sys,x0,str,ts]=mdlInitializeSizes;
case 1
    sys=mdlDerivatives(t,x,u);
case 3
    sys=mdlOutputs(t,x,u);
case {2,4,9}
    sys=[];
otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes = simsizes;
sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 6;
sizes.NumInputs      = 0;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;
sys = simsizes(sizes);
x0  = [];
str = [];
ts  = [0 0];
function sys=mdlOutputs(t,~,~)

X=5+3*sin(0.2*t+pi/5);
Y=5+4*cos(0.3*t+pi/6);
Z=10+8*cos(0.2*t);
K=25+16*sin(0.2*t);
M=30+15*sin(0.2*t+pi/4);
N=8+6*cos(0.3*t);


sys(1)=X;
sys(2)=Y;
sys(3)=Z;
sys(4)=K;
sys(5)=M;
sys(6)=N;

