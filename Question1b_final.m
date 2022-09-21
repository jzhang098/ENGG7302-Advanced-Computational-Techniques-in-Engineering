%% Assignment 1 Q1b 
x0 = [20;58.6-20]; %initial guess [x_0, y_0]

%initialise the parameters
fval = [0]; 
x = linspace(0,41.4,100);
y = 58.6-x;
x_test=[0, 41.4];% used to test the gradient of the linearised function

n = 1;

while 1  
    if n <= 1
        f_xy = [-x0(2,n)/2; -x0(1,n)/2];
        A = [-1, -1;% -x + -y < = -41.4 %being a triangle
            -x0(2,n)/2,-x0(1,n)/2]; %y_0*x/2 + x_0*y/2 > = x_0y_0/2 area >=0
        b = [-41.4;
            -x0(2,n)*x0(1,n)/2];
        Aeq = [1, 1]; % x + y = 58.6
        Beq = [58.6];

        lb = [0;0];
        ub = [41.4;41.4];        
        [x0(:,n+1),fval(n+1)] = linprog(f_xy,A,b,Aeq,Beq,lb,ub);
        
    else
        f_xy = [-x0(2,n)/2; -x0(1,n)/2];
        A = [-1, -1;% -x + -y < = -41.4 %being a triangle
            -x0(2,n-1)/2,-x0(1,n-1)/2;%y_0*x/2 + x_0*y/2 > = x_0y_0/2 area >=0
            -(x0(2,n-1)-x0(2,n))/2,-(x0(1,n-1)-x0(1,n))/2];        
        b = [-41.4;
            x0(2,n)*x0(1,n)/2;
            0];
        Aeq = [1, 1]; % x + y = 58.6
        Beq = [58.6];
        lb = [0;0];        
        ub = [41.4;41.4];
        [x0(:,n+1),fval(n+1)] = linprog(f_xy,A,b,Aeq,Beq,lb,[]);
    end
    
    f=x.*x0(2,n)/2 + y.*(x0(1,n)/2)-x0(1,n)*x0(2,n)/2;
    plot(x,f, 'LineWidth',3,'DisplayName',['No: ',num2str(n-1),...
        ' iteration'])
    hold on
    
    if (abs(x0(2,n+1)*x_test(1)/2-x0(2,n+1)*x_test(2)/2) < 0.1)         
        break
    else
        n = n + 1;
    end
    
end

legend()
plot(x,x.*y/2,'k','linewidth',3,...
    'DisplayName','Non-linear Function of Area f(x,y)')
hold off
ylabel('Area f(x,y) in m^2')
xlabel('x(m)')
grid on 
title('Graphical Illustration of the Approach')
disp(['x = ', num2str(x0(1,end-1))])
disp(['y = ', num2str(x0(2,end-1))])

