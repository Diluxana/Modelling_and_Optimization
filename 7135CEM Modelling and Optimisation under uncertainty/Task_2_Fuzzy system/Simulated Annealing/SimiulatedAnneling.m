%% Simulated Annealing optimization for 15 iterations .
initial_flag = 0;
options = optimoptions('simulannealbnd','PlotFcns',{@saplotbestf});
for i=1:15
     % Rosenbrock function for D=2
    [ro_x,ro_val,ro_exit_flag,ro_output] = simulannealbnd(@rosenbrock,[1 1],[-100,-100],[100,100],options)
    % Rosenbrock function for D=10
    [ro_x,ro_val,ro_exit_flag,ro_output] = simulannealbnd(@rosenbrock,[1 1 1 1 1 1 1 1 1 1],[-100,-100],[100,100],options)
    saarray_x(i,:) = ro_x
    saarray_val(i) = ro_val
    saarray_exit_flag(i) = ro_exit_flag
    saarray_output(i) = ro_output
    % save  the visualizations to file
    fname = sprintf('saarray(%d).fig', i) ;
    savefig(fname)
end
%% Metrics
saarray_max = max(saarray_val)
saarray_min = min(saarray_val)
saarray_mean = mean(saarray_val)
saarray_std = std(saarray_val)