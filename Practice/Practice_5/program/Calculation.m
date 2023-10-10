A = [0 1;9 -1];
B = [1;0];
Q = [1 0; 0 2];
r = 1;

a11 = A(1,1);
a12 = A(1,2);
a21 = A(2,1);
a22 = A(2,2);

b1 = B(1,1);b2 = B(2,1);q1 = 1;q12 = 0;q22 = 2;
syms psi1 psi12 psi2
eqn1 = q1 + 2*a11*psi1 + a21*psi12 - (b1*psi1/sqrt(r))^2 - (b2*psi12/(2*sqrt(r)))^2 - b1*b2*psi1*psi12/r == 0;
eqn2 = q12 + 2*a12*psi1 +2*a21*psi2 + a11*psi12 + a22*psi12- b1*b2*psi12^2/(2*r) - b1^2*psi1*psi12/r - b2^2*psi2*psi12/r - 2*b1*b2*psi1*psi2/r == 0;
eqn3 = q22 +2*a22*psi2 + a12*psi12 - (b2*psi2/sqrt(r))^2 - (b1*psi12/(2*sqrt(r)))^2 - b1*b2*psi2*psi12/r == 0;
[p1,p2,p3] = solve(eqn1,eqn2,eqn3,psi1,psi12,psi2);
vpa(p1)
p1 = double([ans(3,1)]); % psi1
vpa(p2)
p12 = double([ans(3,1)]); % psi12
vpa(p3)
p2 = double([ans(3,1)]); % psi2

Fb = [-1/(2*r) * (2*p1*b1 + p12*b2), -1/(2*r) * (2*p2*b2 + p12*b1)];
Fb1 = [-1,-1];

%%
% LQR
A = [0 1;9 -1];
b = [1;0];
Q = [1 0;0 2];
r = 1;
[K,P] = lqr(A,b,Q,r);
J = [1 0]*P*[1;0];


