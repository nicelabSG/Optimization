close all; clear all; clc;
%%
f = [-1, -2];

A_ineq = [2, 1;
         -4, 5;
         1, -2;];

b_ineq = [20;
         10;
         2];

A_eq = [-1, 5];
b_eq = [15];

ub = [];
lb = [0, 0];

[x, fval, exitflag, output] = linprog(f, A_ineq, b_ineq, A_eq, b_eq, lb, ub);
%%
fprintf('Optimal Value: %f\n', fval);
fprintf('x_value: %f\n', x(1));
fprintf('y_value: %f\n', x(2));
