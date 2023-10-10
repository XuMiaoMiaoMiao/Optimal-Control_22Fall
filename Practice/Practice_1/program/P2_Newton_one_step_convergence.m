%%
%newton
clc
clear all
x_0 =[10;10];
Q = [12 5;5 4];
b = [3;2];
x_extremum = x_0 - inv(Q)*grad(x_0,Q,b)