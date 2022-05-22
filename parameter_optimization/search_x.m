%寻找最优解的序号
num   = numel(f(:,1));
for i=1:num
    if abs(f(i,1)-0.06107)<0.00001
        best=i;
    end
end
vpa(f(best,:),7) 
xx=double(vpa(x(best,:),6))
%z=[ 0.9250073, 0.0004636241]
%fa=0.5901 0.6844 0.7377 0.8434 1.223



