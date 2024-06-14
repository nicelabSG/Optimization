close all; clear all; clc;
%%
c = [1; 1.25];

cvx_begin

    variable x(2);
    minimize -(c')*x;
    subject to
        0.03*x(1) + 0.06*x(2) <= 30;
        0.08*x(1) + 0.04*x(2) <= 44;
        x(1) <= 500;
        x(2) <= 400;
    
        x(1), x(2) >= 0;

cvx_end
%%
disp('========================================')
fprintf('Optimal Value:  %f\n', cvx_optval);
