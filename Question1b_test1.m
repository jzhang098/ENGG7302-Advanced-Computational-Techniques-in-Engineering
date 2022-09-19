x0 = [35;23.6];
fval = [0];
for n = 1:3
    f_xy = [-x0(2,n)/2; -x0(1,n)/2];
    A = [-1, -1;% -x + -y < = -41.4 %being a triangle
        -x0(2,n)/2,-x0(1,n)/2];
    b = [-41.4;
        -x0(2,n)*x0(1,n)/2];
    Aeq = [1, 1]; % x + y = 58.6
    Beq = [58.6];
   %     x0(1,n)*x0(2,n);
    lb = [0;0]; 
    ub = [41.4;41.4];
    
    [x0(:,n+1),fval(n+1)] = linprog(f_xy,[],[],Aeq,Beq,lb,ub)
    
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
