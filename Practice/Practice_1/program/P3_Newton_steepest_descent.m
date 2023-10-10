%%
% steepest
clear all
%gamma = 0.13;%% oscillation
gamma = 0.01;%% aperiodic convergence
Q = [12 5;5 4];
b = [3;2];
convergence_step = 10000;
X = zeros(2,10000);
X(:,1) = [10;10];
for i = 1:1:10000
    X(:,i+1) = X(:,i) - gamma*grad(X(:,i),Q,b);
    if i> 2
        if (X(1,i-1)==X(1,i))&&(X(2,i-1)==X(2,i))&&(X(1,i+1)==X(1,i))&&(X(2,i+1)==X(2,i))
            convergence_step = i
            break;
        end
    end
end
X = X(:,1:convergence_step);
%%
% draw process
xx = X(1,:);yy = X(2,:);
x_convergence = [xx(convergence_step-1) ,yy(convergence_step-1)]
figure
for i = 1: 1: length(xx)-1
    hold on
    plot([xx(i),xx(i+1)],[yy(i),yy(i+1)],'Color','b','LineStyle','--');
end
hold on
plot(xx,yy,'LineStyle','none','Marker','o','MarkerSize',5,'Color','r');
hold on
grid on
function g = grad(x,Q,b)
g = Q*x-b;
end

