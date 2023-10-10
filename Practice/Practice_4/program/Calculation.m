%%
%
clear all
close all
syms f1(t) f2(t) x1(t) x2(t)
ode1 = diff(f1) == 0;
ode2 = diff(f2) == -f1;
ode3 = diff(x1) == x2;
ode4 = diff(x2) == 1/6*f2;
odes = [ode1;ode2;ode3;ode4];
cond1 = x1(0) == 0;
cond2 = x2(0) == 0;
cond3 = x1(5) == 1;
cond4 = x2(5) == 0;
conds = [cond1;cond2;cond3;cond4];
[f1Sol(t),f2Sol(t),x1Sol(t),x2Sol(t)] = dsolve(odes,conds);
u = 1/6*f2Sol(t)

%%
A = [0 1;0 0];
b = [0;1];








