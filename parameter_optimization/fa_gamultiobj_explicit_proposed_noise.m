FitnessFunction = @fa_fitness_explicit_proposed_noise; % Function handle to the fitness function
nvars =6;    % Number of variables
 lb = [
          0%c         
          0%k1
          0%k2
          0%mu1
          0%mu2
          0%w0
          ];   % Lower bound

 ub = [ 
          6%c         
          50%k1
          50%k2
          50%mu1
          50%mu2
          6%w0
          ];   % Lower bound
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
                                         'FunctionTolerance',1e-3,...&default1e-3
                                         'CrossoverFraction',0.8,...
                                         'MaxGenerations',10,...
                                         'PopulationSize',3000);   
rng default           % For reproducibility rng, 'twister');
[x,f,exitFlag,Output] = gamultiobj(FitnessFunction, nvars ,A, b, Aeq, beq, lb, ub, options);
load train; sound(y,Fs)

%  'InitialPopulationMatrix',x0,...
