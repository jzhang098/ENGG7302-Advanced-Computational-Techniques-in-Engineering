%% Load File
clc;
clear all
load A;
load b;
%%
lambda = [1e-10,1e-9,1e-8,1e-7,1e-6,1e-5,1e-4,1e-3,1e-2, 1e-1, 1];


ATA = A'*A;
RHS = A'*b;
normx = [];
normAxb = [];
for ii = 1:length(lambda)
    
    LHS = ATA+lambda(ii)^2*eye(length(ATA));
    x = pinv(LHS)*RHS;
    normx(ii) = norm(x);
    normAxb(ii) = norm(A*x-b);
end
%% Plot L_curve
Lc = loglog(normAxb,normx, 'linewidth',2); grid on
ylim([0,200])
xlabel('$\|Ax_\lambda-b\|_2$', 'interpreter','latex','FontSize',20)
ylabel('$\|x_\lambda\|_2$', 'interpreter','latex','FontSize',20)
title('The L-Curve for the Regularised Approach')

for jj = 5:1:length(lambda)
text(normAxb(jj),normx(jj), ['\lambda = ',num2str(lambda(jj))])
end