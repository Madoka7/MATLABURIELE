data=[        0.03	    0.353445	    1.650165	 4.619404726
        0.06	    0.856865	     3.30649	 5.469060847
        0.09	     1.63381	     4.95297	 6.795122926
        0.12	     2.97584	    6.587515	 9.058560777
        0.15	    5.828875	    8.256655	 13.74869605
        0.18	   17.634819	    9.879892	 33.55113175];
     
     
figure(1)
hold on
plot(data(:,1),data(:,2),'gd-','MarkerSize',5,'LineWidth',2);
plot(data(:,1),data(:,4),'b.--','MarkerSize',10,'LineWidth',2);
xlabel('Geo/X=50/1 Arrival rate \lambda','FontSize',16)
ylabel('Delay','FontSize',16)
legend('TSLS','New First');