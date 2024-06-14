clear all; close all; clc;
%%

f = @(x,y) x.*exp(-(x.^2 + y.^2)) + (x.^2 + y.^2)/20;
%fsurf(f, [-2,2], 'ShowContours', 'on')

fun = @(x) f(x(1), x(2));
x0 = [-0.5; 0.0];
options = optimoptions('fminunc','Algorithm','quasi-newton');
options.Display = 'iter';

[x, fval, exitflag, output] = fminunc(fun,x0,options);
%%

fprintf('x:  %f\n', x);
fprintf('Cost: %f\n', fval);
