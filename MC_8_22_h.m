clear all
N=100;
A=10;
r0=[1 0.95 1.05];
for n=1:3
X=zeros(N,1);
R=zeros(N,1);
%R(1,1)=1;
X_ini=A+randn(1,1)*1;
A_est_ini=X_ini;
Var_X_ini=1;
Var_A_est_ini=1;
X_rec=zeros(N,1);
Var_A_est_rec=zeros(N,1);
K_rec=zeros(N,1);
A_est_rec=zeros(N,1);

r=r0(n);
for i=1:N
R(i,1)=r^i;
sigma=sqrt(R(i,1));
X=A+normrnd(0,r^i);
% recursion
K=Var_A_est_ini/(Var_A_est_ini+R(i,1));
A_est=A_est_ini+K*(X-A_est_ini);
Var_A_est=(1-K)*Var_A_est_ini;
Var_A_est_ini=Var_A_est;
% Record the number
X_rec(i)=X;
Var_A_est_rec(i)=Var_A_est;
K_rec(i)=K;
A_est_rec(i)=A_est;
end
% plot the figure
figure
subplot(2,2,1)
plot(1:N,X_rec);
title('Data sequence X')
subplot(2,2,2)
plot(1:N,A_est_rec);
title('Estimate A[N]')
subplot(2,2,3)
plot(1:N,K_rec);
title('Gain sequence K')
subplot(2,2,4)
plot(1:N,Var_A_est_rec);
title('Variance sequence Var A[N]')
hold on
end