close all; clear all; clc;
%%

x = sdpvar(2,1); % 2행 1열 / 변수 2개 사용 / continuous variables

c = [-1;
    -2];

A_ineq = [2, 1;
        -4, 5;
        1, -2];

b_ineq = [20;
        10;
        2];

A_eq = [-1, 5];
b_eq = [15];

objective = c' * x;
constraints = [A_ineq*x <= b_ineq,
                A_eq*x == b_eq,
                x >= 0];

options = sdpsettings('solver', 'fmincon');
optimize(constraints, objective, options);

%%
fprintf('Cost: %f\n', value(objective));
fprintf('x: %f\n', value(x(1)));
fprintf('y: %f\n', value(x(2)));
