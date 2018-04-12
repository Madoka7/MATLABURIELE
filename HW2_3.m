n=[1e3, 1e4, 1e5, 1e6, 1e7, 1e8];
pi=[3.08800
 3.127600                                                                                                                       
 3.142840                                                                                                                       
 3.143044                                                                                                                       
 3.142195                                                                                                                       
 3.141625  ];

plot(log10(n),pi,'r*-','LineWidth',3);
set(gca,'xtick',log10(n));

xlabel('Log10(N)');
ylabel('Estimate \pi');