%% Assignment 1 Q2a
QA = [9,13,17,10,15,8]; %No. of Product A　sold
QB = [1,8,3,9,2,5]; %No. of Product B sold
P = [5,2,9,4,6,10]; %Price of raw Material

%Objective Function
f = [0;0;0;1]; % [c0;c1;c2;z]
%Subjected to the constraint
A = [-ones(6,1),-QA',-QB',-ones(6,1);
    ones(6,1),QA',QB',-ones(6,1)];
b =[-P';P'];
lb = [];
ub = [];
% Solve the LP Problem Using linprog()
[x, fval] = linprog(f,A,b,[],[],lb,[]);



%Graphical Representation

[qa,qb] = meshgrid(linspace(min(QA),max(QA),6),linspace(min(QB),max(QB),6));
Y = x(1)+x(2).*qa+x(3).*qb;
surf(qa,qb,Y,'FaceAlpha',0.35, 'FaceColor','interp','LineStyle',':')
hold on
scatter3(QA,QB,P, 100,'filled','MarkerEdgeColor','k',...
        'MarkerFaceColor',[0 .45 .75])
legend({'Price Prediction LP Problem','Observed Price'})
xlabel('Quantity of A Sold')
ylabel('Quantity of B Sold')
zlabel('Price of Raw Material')
title('Graphical Representation of the LP Problem')
