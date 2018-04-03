 data=[ 0.1	     2.14863	    5.378951	 12.64978026
 0.2	    4.815419	     9.28775	 14.29886747
 0.3	    8.333487	   12.033204	 16.46499454
 0.4	   13.050037	   13.792865	 19.49117493
 0.5	   19.730056	    14.85335	 23.75607493
 0.6	   30.173523	   15.410909	 30.54707495
 0.7	    48.11098	   15.670119	 42.20461743
 0.8	   90.634604	   15.784546	 69.20878381
0.84	  149.959556	    15.81482	 108.5069593
];

figure(1)
hold on
plot(data(:,1)*(1.0 / 34.1 + 1.0 / 6.9 + 1.0 / 3.5),data(:,4),'rd-','MarkerSize',5,'LineWidth',2);
%plot(data(:,1),data(:,4),'b.--','MarkerSize',10,'LineWidth',2);
xlabel('Arrival rate \lambda','FontSize',16)
ylabel('Average User Delay','FontSize',16)
%legend('Delay');