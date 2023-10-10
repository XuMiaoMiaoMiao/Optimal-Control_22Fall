%%
clear all
syms a b
eqn1 = 1/12*a*5^4 + 1/6*b*5^3 == 1;
eqn2 = 1/3*a*5^3 + 1/2*b*5^2 == 0;
[a,b] = solve(eqn1,eqn2,a,b)