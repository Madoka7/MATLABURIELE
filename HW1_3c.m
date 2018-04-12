x=[0:0.1:1]';
b = exp(-1).*ones(11,1);
plot(x,b);
hold;
ci = (1/2 - x)./(1 - x);
cii = ((2*x+1)./(2*x+2)).^2;
plot(x,ci,'-*');
plot(x,cii,'--');