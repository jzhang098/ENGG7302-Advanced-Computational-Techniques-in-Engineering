%% Assignment 1 Q2b
QA = [9,13,17,10,15,8]; %No. of Product A　sold
QB = [1,8,3,9,2,5]; %No. of Product B sold
P = [5,2,9,4,6,10]; %Price of raw Materials

% Solve LS Problem Matrix Form Ax = B
A = [6, sum(QA),sum(QB);
    sum(QA),sum(QA.*QA),sum(QA.*QB);
    sum(QB),sum(QA.*QB),sum(QB.*QB)];
B = [sum(P);sum(QA.*P);sum(QB.*P)];

% Solve the Linear LS based on the normal equation approach

X = inv(A'*A)*A'*B;
disp(['c_0 = ',num2str(X(1))])
disp(['c_1 = ',num2str(X(2))])
disp(['c_2 = ',num2str(X(3))])

%Graphical Representation

[qa,qb] = meshgrid(linspace(min(QA),max(QA),6),linspace(min(QB),max(QB),6));
Y = X(1)+X(2).*qa+X(3).*qb;
surf(qa,qb,Y,'FaceAlpha',0.35, 'FaceColor','interp','LineStyle',':')
hold on
scatter3(QA,QB,P, 100,'filled','MarkerEdgeColor','k',...
        'MarkerFaceColor',[0 .45 .75])
legend({'Price Prediction LS Problem','Observed Price'})
xlabel('Quantity of A Sold')
ylabel('Quantity of B Sold')
zlabel('Price of Raw Material')
title('Graphical Representation of the LS Problem')