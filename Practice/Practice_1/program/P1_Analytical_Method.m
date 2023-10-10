clear all
syms x u l
eq1 = 12*x+5*u-3+8*l*x == 0;
eq2 = 4*u+5*x-2+l == 0;
eq3 = 4*x^2 + u + 2 == 0;
[x,u,l] = solve(eq1,eq2,eq3,x,u,l)
%%
x=vpa(x);u=vpa(u);l=vpa(l);
x=x(3)
u=u(3)
l=l(3)
J = 6*x^2+2*u^2 +5*x*u-3*x-2*u-12