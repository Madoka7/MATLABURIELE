data=[ 0.1	     2.14863
 0.2	    4.815419
 0.3	    8.333487
 0.4	   13.050037
 0.5	   19.730056
 0.6	   30.173523
 0.7	    48.11098
 0.8	   90.634604
0.84	  149.959556];

figure(1)
hold on
plot(data(:,1)*(1.0 / 34.1 + 1.0 / 6.9 + 1.0 / 3.5),data(:,2),'rd-','MarkerSize',5,'LineWidth',2);
%plot(data(:,1),data(:,4),'b.--','MarkerSize',10,'LineWidth',2);
xlabel('Arrival rate \lambda','FontSize',16)
ylabel('Average System Workload','FontSize',16)
%legend('Workload');
