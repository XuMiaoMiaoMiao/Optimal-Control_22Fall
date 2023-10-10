clear all
clc
A = [0 -6;1 -1];
b = [1;0];
C = [1 0];
W = [5 3;3 5];
V = 1;G = eye(2);
[K,P] = lqr(A',C',G*W*G',V);
L = K';
