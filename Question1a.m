% Assignment 1 Q1

%% find the maximum area of a triangle




%% Functions for Question 1 (a)

function A = AreaTri(x)
% OUTPUT:
%   A: The area of the enclosed space
%INPUT:
%   x: length of one side

P = 100; %length of the perimeter
y = 10+x;%constraint 1
z = P-x-y;%constraint 2
% calculate the triangle area by using the Heron's formula
A = sqrt(0.5*P*(0.5*P-x)*(0.5*P-y)*(0.5*P-z);
end

function [a,b] = GSS(a0,b0,c0)
% Golden Section Search Method


end
