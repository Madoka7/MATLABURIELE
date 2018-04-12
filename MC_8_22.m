A=10;
N=100;
n=[1:N]';
rn=[1 0.95 1.05];
for j=1:3
    r=rn(j);
    s=r.^n;
    wn=normrnd(0,r.^n);
    x=10*ones(N,1)+wn;
    A0=A;
    V0=1;
    Ae=zeros(N,1);
    Kp=zeros(N,1);
    Vp=zeros(N,1);
    K=V0/(V0+s(1));
    Ae(1)=A0+K*(x(1)-A0);
    Vp(1)=(1-K)*V0;
    V0=Vp(1);
    Kp(1)=K;
    for i = 2:N
        K=V0/(V0+s(i));
        Ae(i)=Ae(1)+K*(x(i)-Ae(i-1));
        Kp(i)=K;
        Vp(i)=(1-K)*V0;
        V0=Vp(i);
    end
    figure
    subplot(3,1,1)
    plot(n,Ae);
    title('Estimate A');
    subplot(3,1,2)
    plot(n,Vp);
    title('Estimate Var(A)');
    subplot(3,1,3)
    plot(n,Kp);
    title('Gain');
    xlabel(string('r=') + string(num2str(rn(j))));
end