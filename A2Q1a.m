%% Load File
clc;
load A;
load b;
%% Solve the system equation B = Ax + b
% B is the mean of b
B = mean(b)*ones(length(b),1);
%Normal Way of solving
x = pinv(A)*(B-b);
subplot(311)
plot(x);xlabel('Samples');grid on
title('Solved X using Pesudo-Inverse');

%% Using SVD
[U,S,V] = svd(A);

%Low-rank approximation r = 200
r = 200;
U1 = U(:,1:r);
V1 = V(:,1:r);
S1 = S(1:r,1:r);

norm_dff1 = norm(U1*S1*V1' - A,'fro')%/norm(A,'fro');
%Extract the diagnal element of the S matrix
S_q = diag(S1);
S_qinv = diag(S_q.^(-1)); %inverse S

invA = V1*S_qinv*U1';%Pseudo inverse using SVD
x_SVD = invA*(B-b);
subplot(312)
plot(x_SVD);xlabel('Samples');grid on
title('Solved X using SVD with low-rank approximation r = 200');
condA = cond(U1*S1*V1');
formatSpec = 'Condition Number of a = %1.0f';
fprintf(formatSpec, condA)


%% Low-rank approximation r = 400
r1 = 400;
U2 = U(:,1:r1);
V2 = V(:,1:r1);
S2 = S(1:r1,1:r1);

norm_dff2 = norm(U2*S2*V2' - A,'fro')%/norm(A,'fro');
disp(norm_dff2)
%Extract the diagnal element of the S matrix
S_q = diag(S2);
S_qinv = diag(S_q.^(-1)); %inverse S

invA = V2*S_qinv*U2';%Pseudo inverse using SVD
x_SVD1 = invA*(B-b);
subplot(313)
plot(x_SVD1);xlabel('Samples');grid on
title('Solved X using SVD with low-rank approximation r = 400');
condA1 = cond(U2*S2*V2');
fprintf(formatSpec, condA1)
