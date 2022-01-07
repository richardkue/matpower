function [V, converged, i] = newtonpf_distributed_slack_bus(Ybus, Sbus, V0, ref, pv, pq, mpopt, gen)
%% Newton power flow with distributed slack bus (power, polar)

% Code will be similar to newtonpf (lots of code duplication :/ )
% Jacobian will increase +1 in both dimensions
%    new line for active power equation at reference bus
%    new column for slack variable
