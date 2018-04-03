%% IN THIS SCRIPT
%% WE HAVE POWER WEIGHT EQUAL TO 240
%% LARGE RIGHT?

WF=[0.1	  917.126611	    2.553167	 972.1025803
0.2	  979.967528	    5.121997	 1084.784027
0.3	 1069.281798	     5.93654	 1179.118379
0.4	 3289.462498	     8.07187	 2341.172769
 0.5	 3347.847448	   11.626775	 2344.270425
 0.6	  3367.83403	    14.01601	 2387.030653
 0.7	 3391.073171	    15.35616	 2432.256693
 0.8	 3435.337722	    15.89564	 2448.837167
0.84	 3478.844263	    15.95966	 2440.093489
0.87	  3566.72831	    15.98142	 2456.443669
 0.9	  4403.56287	   15.991825	 2775.292764
 0.92	 29787.54276	   15.992685	  14502.4483
0.94	  60150.9963	   15.992295	  27871.8898
0.96	 93143.26455	   15.991995	 41016.46205
0.97	  107837.965	   15.992385	 46861.44307
0.98	 123652.0799	   15.991645	  52312.9177];

JLW=[ 0.1	  943.499123	    2.597237	 693.2398983
 0.2	  1009.36813	    5.226872	 388.9200941
 0.3	 1103.301191	    5.962385	 317.6386737
 0.4	 3214.848875	     6.98851	  1326.03219
 0.5	 3376.918381	   11.226685	 1129.624526
 0.6	 3402.704905	   13.953085	  949.036982
 0.7	 3426.049601	   15.391035	 827.9236244
 0.8	 3461.951763	    15.88955	 738.2365823
0.84	  3482.38625	   15.943175	 713.5243196
0.87	 3511.350415	   15.975605	 695.3266054
 0.9	 3542.545662	    15.98335	 686.3720726
0.92	 3575.679025	    15.98912	 684.2516993
0.94	 3612.102977	    15.99046	  686.330956
0.96	 3692.573456	    15.98933	 696.2924623
0.97	 3741.987333	    15.99188	 708.3844568
0.98	 3831.718976	    15.99043	 735.4910291
0.99	 4045.214184	    15.99043	  797.756189];

CA=[ 0.1	   11.044816	    5.768552	 20.30925958
 0.2	   26.412935	   10.239022	 23.12439628
 0.3	   36.201361	   13.074054	 24.35065264
 0.4	   45.248691	   14.784443	 26.67259661
 0.5	   54.949609	   15.596061	 30.41959037
 0.6	   68.336641	   15.892614	 36.35780533
 0.7	   90.118316	    15.98023	 46.86992821
 0.8	   130.66228	   15.997987	 66.23075815
0.84	  152.893419	   15.999502	 76.80812787
0.87	  181.134332	   15.999724	 90.63542932
 0.9	  221.469282	   15.999898	 109.8238085
0.92	  253.633047	   15.999926	  124.965873
0.94	  306.992806	   15.999946	 150.8550961
0.96	  392.036037	   15.999948	 191.8705657
0.97	  453.825046	   15.999948	 222.1606669
0.98	  594.607836	   15.999948	 290.8041803
0.99	  740.843895	   15.999948	  361.376835];

figure(1)
hold on
plot(WF(:,1),(WF(:,4)),'r--','MarkerSize',10,'LineWidth',2);
plot(CA(:,1),(CA(:,4)),'k','MarkerSize',10,'LineWidth',2);
plot(JLW(:,1),(JLW(:,4)),'b-.','MarkerSize',10,'LineWidth',2);
xlabel('Arrival rate \lambda','FontSize',16)
ylabel('Avg. Delay','FontSize',16)
grid on
box on
legend('WaterFilling, K = 240','Carrier, K = 240','JLW, K = 240')