%% Assignment 1 Q1

%% find the maximum area of a triangle using GSS method
[af, bf, a_1, b_1] = GSS(21.02,39.98,0.001);
% Maximum Area using GSS method
MaxArea = AreaTri(mean([af,bf]));
disp(['Maxixum Area of the Triangle = ',num2str(MaxArea),' m^2'])

%Graphical Test to verify the result
x = linspace(20,40,1000);
plot(x,AreaTri(x),'linewidth',2)
hold on
plot(a_1,AreaTri(a_1),'x','MarkerSize',7,'linewidth',2)
plot(b_1,AreaTri(b_1),'o','MarkerSize',7,'linewidth',2)
plot(mean([af,bf]),MaxArea,'s','MarkerSize',11,'MarkerEdgeColor','red'...
    ,'MarkerFaceColor',[1 .6 .6],'linewidth',2)
hold off
xlabel('length of x (m)')
ylabel('Area of the Triangle (m^2)')
legend({'Area of the Triangle in terms of x',...
    'Iterations of the lower bounds',...
    'Iterations of the upper bounds',...
    'Final Value'}, 'location','south')
ylim([0,600])
text(mean([af,bf]),MaxArea+50, ['Maximum Area =',num2str(MaxArea), 'm^2'])
grid on
title('Graphical Representation of Finding Maximum Area using the GSS method')

%% Functions for Question 1 (a)
function [af,bf,a_all, b_all] = GSS(a0,b0,tol)
% Golden Section Search Method to find maximum area
% OUTPUT:
%   af: final value of the lower bound
%   bf: final value of the upper bound
%   a_all: all the lower bound values in the iteration
%   b_all: all the upper bound values in the iteration
%INPUT:
%   a0: Lower bound of the initial guess
%   b0: Upper bound of the initial guess
%   tol: When the search terminates

tau = 0.5*(sqrt(5)-1);
a = a0;
b = b0;
a_it = [a0];
b_it = [b0];

x1 = a+(1-tau)*(b-a);
f1 = AreaTri(x1);

x2 = a+tau*(b-a);
f2 = AreaTri(x2);

while (b-a)>tol
    if (f1 < f2)
        a = x1;
        x1 = x2;
        f1 = f2;
        x2 = a + tau*(b-a);
        f2 = AreaTri(x2);
        a_it(end+1) = a;
    else
        b = x2;
        x2 = x1;
        f2 = f1;
        x1 = a + (1-tau)*(b-a);
        f1 = AreaTri(x1);
        b_it(end+1) = b;
    end
end
af = a;
bf = b;
a_all = a_it;
b_all = b_it;
end

function A = AreaTri(x)
% OUTPUT:
%   A: The area of the enclosed space
%INPUT:
%   x: length of one side

P = 100; %length of the perimeter
y = 10+x;%constraint 1
z = P-x-y;%constraint 2
% calculate the triangle area by using the Heron's formula
A = sqrt(0.5*P.*(0.5*P-x).*(0.5*P-y).*(0.5*P-z));
end


