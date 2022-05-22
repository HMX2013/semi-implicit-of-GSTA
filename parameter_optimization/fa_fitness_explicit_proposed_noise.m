function y = fa_fitness_explicit_proposed_noise(x)
persistent runnng_time
if isempty(runnng_time)
   runnng_time=-1;
end
numSims  = numel(x(:,1));
simIn(1:numSims) = Simulink.SimulationInput('semi_const_ideal');
for i = 1:numSims
simIn(i)= simIn(i).setBlockParameter('semi_const_ideal/c_fa', 'Value',num2str(x(i,1)),...
                                                         'semi_const_ideal/k1_fa', 'Value', num2str(x(i,2)),...
                                                         'semi_const_ideal/k2_fa', 'Value', num2str(x(i,3)),...
                                                         'semi_const_ideal/mu1_fa', 'Value', num2str(x(i,4)),...
                                                         'semi_const_ideal/mu2_fa', 'Value', num2str(x(i,5)),...
                                                         'semi_const_ideal/w0_fa', 'Value', num2str(x(i,6)));   
end
out = parsim(simIn,'ShowSimulationManager','on',...
                              'ShowProgress','off');
y=zeros(numSims,2);    
L=-146;  U=231;

 for j = 1:numSims    
  if (out(1,j).tou_max>U) || (out(1,j).tou_min<L)|| (out(1,j).terminate_time<98.9) 
        y(j,1)=1000000;
        y(j,2)=1000000;
  else
        y(j,1)=out(1,j).CHAT_fa;
        y(j,2)=out(1,j).RMSE_fa;
  end
 end
 
runnng_time=runnng_time+1
 
save dat_x x

end

%      out(1,j).k1_max(4)<=out(1,j).k0(4)  || ( out(1,j).k1_min(4)<0 ) || ( out(1,j).k1_e(4)<=0 ) 