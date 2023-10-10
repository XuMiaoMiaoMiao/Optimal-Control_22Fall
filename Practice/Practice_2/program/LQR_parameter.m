%%
% LQR
clear all
A = [0 1;9 -1];
b = [1;0];
Q = [1 0;0 2];
r = 1;
[K,P] = lqr(A,b,Q,r);
J = [1 0]*P*[1;0];


