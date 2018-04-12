%% THIS FILE IS FOR WORKLOAD DELAY AND POWER PERFORMNACE
%% WHEN IT REGARDS K
%% LOCK ARRIVAL RATE EQUAL TO 0.8


WF=[0          0.8	  114.981954	    15.99666	 64.37856807
1          0.8	    121.7158	   15.993039	  68.5219679
5          0.8	   162.58642	   15.964205	 97.14408469
10          0.8	  225.493636	   15.932115	 141.9232958
15          0.8	   290.55357	   15.913385	  188.754853
20          0.8	  359.230111	    15.91031	 238.1694655
30          0.8	  497.115361	     15.9019	 337.8674579
40          0.8	  638.341052	   15.905615	 439.0839313
50          0.8	  778.337488	   15.900465	 539.9055576
60          0.8	  918.614014	   15.900395	 641.9099602
70          0.8	 1056.577056	    15.89795	 742.0197336
80          0.8	 1196.382756	    15.90524	 841.8938526
90          0.8	 1338.593565	   15.898065	 943.6945427
100         0.8	 1478.969653	    15.90585	 1044.589329
120         0.8	 1756.454004	   15.892705	  1244.58206];

JLW=[0          0.8	  172.831484	   15.999784	 66.50366601
1          0.8	  179.171379	   15.998485	 66.22859642
5          0.8	  219.484137	   15.994695	 71.16395136
10          0.8	  275.327622	   15.981325	 80.03150269
15          0.8	  335.631063	   15.966995	 90.58948081
20          0.8	  399.121491	    15.95193	 102.7639219
30          0.8	  533.215389	   15.933955	  129.062945
40          0.8	  668.360818	    15.91919	  156.967451
50          0.8	  807.408942	   15.908885	 185.7523321
60          0.8	  945.929603	    15.90068	 214.2106425
70          0.8	   1085.9822	   15.899145	 243.0735469
80          0.8	  1225.17787	    15.89631	  271.423887
90          0.8	 1364.505557	   15.885315	 301.3972228
100         0.8	 1504.179293	    15.89887	 330.3391557
120         0.8	 1784.536142	    15.89702	 387.7088508];

CA=[0          0.8	  129.054594	    15.99848	 65.87433895
1          0.8	  130.139174	   15.998423	 66.23786389
5          0.8	  127.545833	   15.998431	 65.16942459
10          0.8	  129.020677	   15.998221	 65.47129942
15          0.8	  127.501368	   15.998041	 64.84518882
20          0.8	  130.396489	   15.998547	 66.11650003
30          0.8	   130.66228	   15.997987	 66.23075815
40          0.8	   130.66228	   15.997987	 66.23075815
50          0.8	   130.66228	   15.997987	 66.23075815
60          0.8	   130.66228	   15.997987	 66.23075815
70          0.8	   130.66228	   15.997987	 66.23075815
80          0.8	   130.66228	   15.997987	 66.23075815
90          0.8	   130.66228	   15.997987	 66.23075815
100         0.8	   130.66228	   15.997987	 66.23075815
120         0.8	   130.66228	   15.997987	 66.23075815];

if(0)%% Delay
    figure(1)
    hold on
    plot(WF(:,1),(WF(:,5)),'r--','MarkerSize',10,'LineWidth',2);
    plot(CA(:,1),(CA(:,5)),'k','MarkerSize',10,'LineWidth',2);
    plot(JLW(:,1),(JLW(:,5)),'b-.','MarkerSize',10,'LineWidth',2);
    xlabel('Power Weight K','FontSize',16)
    ylabel('Avg. Delay','FontSize',16)
    grid on
    box on
    legend('WaterFilling','Carrier','JLW')
elseif(1) %% Power
    figure(1)
    hold on
    plot(WF(:,1),(WF(:,4)),'r--','MarkerSize',10,'LineWidth',2);
    plot(CA(:,1),(CA(:,4)),'k','MarkerSize',10,'LineWidth',2);
    plot(JLW(:,1),(JLW(:,4)),'b-.','MarkerSize',10,'LineWidth',2);
    xlabel('Power Weight K','FontSize',16)
    ylabel('Avg. Power','FontSize',16)
    grid on
    box on
    legend('WaterFilling','Carrier','JLW')
else   %% Workload
    figure(1)
    hold on
    plot(WF(:,1),(WF(:,3)),'r--','MarkerSize',10,'LineWidth',2);
    plot(CA(:,1),(CA(:,3)),'k','MarkerSize',10,'LineWidth',2);
    plot(JLW(:,1),(JLW(:,3)),'b-.','MarkerSize',10,'LineWidth',2);
    xlabel('Power Weight K','FontSize',16)
    ylabel('Avg. Workload','FontSize',16)
    grid on
    box on
    legend('WaterFilling','Carrier','JLW')
end

