function y = psi_fitness_explicit_proposed_noise(x)
persistent runnng_time
if isempty(runnng_time)
   runnng_time=-1;
end
numSims  = numel(x(:,1));
simIn(1:numSims) = Simulink.SimulationInput('explicit_proposed_ideal');
for i = 1:numSims
simIn(i)= simIn(i).setBlockParameter('explicit_proposed_ideal/c_psi', 'Value',num2str(x(i,1)),...
                                                           'explicit_proposed_ideal/mu1_psi', 'Value', num2str(x(i,2)),...
                                                           'explicit_proposed_ideal/mu2_psi', 'Value', num2str(x(i,3)),...
                                                           'explicit_proposed_ideal/w_psi', 'Value', num2str(x(i,4)),...
                                                           'explicit_proposed_ideal/d_psi', 'Value', num2str(x(i,5)),...
                                                           'explicit_proposed_ideal/k0_psi', 'Value', num2str(x(i,6)),...
                                                           'explicit_proposed_ideal/k1min_psi', 'Value', num2str(x(i,7)),...
                                                           'explicit_proposed_ideal/eps_psi', 'Value', num2str(x(i,8)),...
                                                           'explicit_proposed_ideal/beta_psi', 'Value', num2str(x(i,9)),...
                                                           'explicit_proposed_ideal/delta_psi', 'Value', num2str(x(i,10)),...
                                                           'explicit_proposed_ideal/w0_psi', 'Value', num2str(x(i,11)) );          
end
out = parsim(simIn,'ShowSimulationManager','on',...
                              'ShowProgress','off');
y=zeros(numSims,2);    
L=-146;  U=231;

 for j = 1:numSims    
  if (out(1,j).tou_max>U) || (out(1,j).tou_min<L)|| (out(1,j).terminate_time<98.9) ||...
     out(1,j).k1_max(6)<=out(1,j).k0(6)  || ( out(1,j).k1_min(6)<0 ) || ( out(1,j).k1_e(6)<=0 ) 
        y(j,1)=1000000;
        y(j,2)=1000000;
  else
        y(j,1)=out(1,j).CHAT_psi;
        y(j,2)=out(1,j).RMSE_psi;
  end
 end
 
runnng_time=runnng_time+1
 
save dat_x x

end
