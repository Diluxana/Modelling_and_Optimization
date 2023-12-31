clc, clear, close all
rng default
global initial_flag
%% Genetic Algotithm Optimization 15 iterations
initial_flag = 0;
options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
for i=1:15
    initial_flag = 0;
    % Rosenbrock function for D=2
    [ga_x,ga_val,ga_exit_flag,ga_output]= ga(@rosenbrock,2,options)
    % Rosenbrock function for D=10
    %[ga_x,ga_val,ga_exit_flag,ga_output] = ga(@rosenbrock,10,options)
    ga_main_x(i,:) = ga_x
    ga_main_val(i) = ga_val
    ga_main_exit_flag(i) = ga_exit_flag
    ga_main_output(i) = ga_output
    % save visualizations to file
    fname = sprintf('ga(%d).fig', i) ;
    savefig(fname)
end
%% GA 15 iteration measures
ga_val_max = max(ga_main_val)
ga_val_min = min(ga_main_val)
ga_val_mean = mean(ga_main_val)
ga_val_std = std(ga_main_val)
