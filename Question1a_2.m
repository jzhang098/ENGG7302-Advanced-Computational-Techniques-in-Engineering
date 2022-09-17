%% Question 1a part2
% setting up symbols
syms x z lambda
y = x+10;

fxz = sqrt(50*(50-x)*(50-y)*(50-z)); %objective function
gxz = x+y+z-100; %constraint function
simplify(fxz);

%Taking partial derivative of the objective function
f_x = diff(fxz,x);
f_z = diff(fxz,z);

pretty(simplify(f_x))
pretty(simplify(f_z)) 

%Lagrange Equations
eq1 = f_x + lambda*diff(gxz,x) == 0;
eq2 = f_z + lambda*diff(gxz,z) == 0;
eq3 = gxz == 0;

%Solving the Lagrange Equations 
Sol = solve([eq1,eq2,eq3],[x,z,lambda]);

%The Solution
x_sol = double(Sol.x)
z_sol = double(Sol.z)
lambda_sol = double(Sol.lambda)
y_sol = x_sol(2) +10;

%The Maximum Area in m^2
fxz_sol = sqrt(50*(50-x_sol(2))*(50-y_sol)*(50-z_sol(2)))
