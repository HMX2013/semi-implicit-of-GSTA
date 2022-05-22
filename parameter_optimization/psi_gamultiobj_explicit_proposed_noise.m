FitnessFunction = @psi_fitness_explicit_proposed_noise; % Function handle to the fitness function
nvars =11;    % Number of variables
 lb = [
          0%c         
          0%mu1
          0%mu2
          0%w
          0%d
          0%k0
          0%k1min
          0%eps
          0%beta
          0%delta
          0%w0
          ];   % Lower bound

 ub = [ 
          10%c         
          2%mu1
          2%mu2
          2%w
          2%d
          0.01%k0
          2%k1min
          5%eps
          5%beta
          0.05%delta
          10%w0
          ];  % Upper bound
A = []; % No linear inequality constraints
b = []; % No linear inequality constraints
Aeq = []; % No linear equality constraints
beq = []; % No linear equality constraints                                                                                                  
options = optimoptions(@gamultiobj,...  
                                         'PlotFcn',{@gaplotpareto,@gaplotscorediversity},...
                                         'DistanceMeasureFcn',{@distancecrowding,'genotype'},...%function space (phenotype,default) or design space (genotype). 
                                         'ParetoFraction',0.35,...                                                           %The Pareto fraction has a default value of 0.35
                                         'UseVectorized',true,...'HybridFcn',@fgoalattain
                                         'UseParallel',true,...
                                         'InitialPopulationMatrix',x0,...
                                         'FunctionTolerance',1e-3,...&default1e-3
                                         'CrossoverFraction',0.8,...
                                         'MaxGenerations',15,...
                                         'PopulationSize',1600);   
rng default           % For reproducibility rng, 'twister');
[x,f,exitFlag,Output] = gamultiobj(FitnessFunction, nvars ,A, b, Aeq, beq, lb, ub, options);
load train; sound(y,Fs)



%  'InitialPopulationMatrix',x0,...
% x0=zeros(12,1)'
% [x,f,exitFlag,Output] =gamultiobj(FitnessFunction,nvars,[],[],[],[],lb, ub,ConstraintFunction,options);