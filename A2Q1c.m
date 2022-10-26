%% Load Variable
load A.mat;
load b.mat;



[m,n] = size(A);
%[m, n] = [num_of_rows, num_of_cols]

% Calculate mean(A)
A_bar = [];
for i = 1:m
    A_bar_i = (sum(A(m,:))/n)*ones(1,n);
    A_bar = [A_bar; A_bar_i];
end

% Calculate mean(B)
b_bar = (sum(b)/m)*ones(m,1);

% Linear Programming
f = ones(n, 1);
A_lin = [(-A + 0.9999*A_bar); (A-1.0001*A_bar)];
b_lin = [(b-0.9999*b_bar); (-b+1.0001*b_bar)];
ub = (5e-3)*ones(n,1);
lb = zeros(n, 1);

x = linprog(f,A_lin,b_lin,[],[],lb,ub);
stem(x); xlabel('i(Samples)'); title('Optimised Result')
ylabel('x(i)')