A = [2 -1 0; 4, 3, 2];
A_pinv = pinv(A)

[U, S, V] = svd(A);
S_q = diag(S);
S_qinv = diag(S_q.^(-1)); %inverse S
S_qinv1 = [S_qinv; [0,0]];

Sp = [1/sqrt(30),0;0,1/2;0,0];
    
invA = V*S_qinv1*U'
