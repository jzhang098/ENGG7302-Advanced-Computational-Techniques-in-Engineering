%% Load File
clc;
A = rand(60,50);
b = rand(60,1);
%% Solve the system equation B = Ax + b
% B is the mean of b
B = mean(b)*ones(length(b),1);
%Normal Way of solving
x = pinv(A)*(B-b);
subplot(211)
stem(x);xlabel('Samples');grid on
title('Solved X using Pesudo-Inverse');

%Using SVD
[U,S,V,err] = svdsketch(A, 1e-7);
%[U,S,V] = svd(A);

%Extract the diagnal element of the S matrix
S_q = diag(S);
S_qinv = diag(S_q.^(-1)); %inverse S
S_qinv1 = [S_qinv; 
    zeros(length(S(:,1))-length(S_q),length(S_q))]';

invA = V*S_qinv1*U';%Pseudo inverse using SVD
x_SVD = invA*(B-b);
subplot(212)
stem(x_SVD);xlabel('Samples');grid on
title('Solved X using SVD with low-rank approximation');
condA = cond(U*S*V');
formatSpec = 'Condition Number of a = %1.0f';
fprintf(formatSpec, condA)