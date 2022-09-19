x0 = [35;23.6];
fval = [0];
for n = 1:3
    f_xy = [-x0(2,n)/2; -x0(1,n)/2];
    A = [1 0 ; % upper bound of x
        -1 0 ; % lower bound of x
        0 1 ;  % upper bound of y
        0 -1];% lower bound of y
    b = [58.6; 0; 58.6; 0];
     Aeq = [1 1; % x + y = 58.6
       x0(2,n) x0(1,n)]; % linearized equation from Taylor's Series
        %-1 1 ];  % x - y >= 0
    Beq = [58.6;
       x0(1,n)*x0(2,n)];
        %0];
    lb = []; 
    ub = [];
    
    [x0(:,n+1),fval(n+1)] = linprog(f_xy,A,b,Aeq,Beq,ub,lb)
    
    disp(n)
        
end
% 
% function f = fxy(x,y)
% f = x*y/2;
% end
% 
% function f = f_x(x0,y0)
% f = y0/2;
% end
% 
% function f = f_y(x0,y0)
% f = x0/2;
% end
