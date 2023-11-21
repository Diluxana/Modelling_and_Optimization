%% Particle Swarm Optimization 15 iterations on the Rosenbrock function 
options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
%rng default
initial_flag = 0;
for i=1:15
    %Rosenbrock function for D=2
    [sw_x,sw_val,sw_exit_flag,sw_output] = particleswarm(@rosenbrock,2,[-100,-100],[100,100],options)
    % Rosenbrock function for D=10
    [sw_x,sw_val,sw_exit_flag,sw_output] = particleswarm(@rosenbrock,10,[-100,-100],[100,100],options)
    sw_m_x(i,:) = sw_x
    sw_m_val(i) = sw_val
    sw_m_exit_flag(i) = sw_exit_flag
    sw_m_output(i) = sw_output
    % save visualizations to file
    fname = sprintf('pso(%d).fig', i) ;
    savefig(fname)
end
%% Metrics
swarm_val_max = max(sw_m_val)
swarm_val_min = min(sw_m_val)
swarm_val_mean = mean(sw_m_val)
swarm_val_std = std(sw_m_val)