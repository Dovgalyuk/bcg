3 PRINT TAB(33);"CHEMIST"
6 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
8 PRINT:PRINT:PRINT
10 PRINT "THE FICTITIOUS CHECMICAL KRYPTOCYANIC ACID CAN ONLY BE"
20 PRINT "DILUTED BY THE RATIO OF 7 PARTS WATER TO 3 PARTS ACID."
30 PRINT "IF ANY OTHER RATIO IS ATTEMPTED, THE ACID BECOMES UNSTABLE"
40 PRINT "AND SOON EXPLODES.  GIVEN THE AMOUNT OF ACID, YOU MUST"
50 PRINT "DECIDE WHO MUCH WATER TO ADD FOR DILUTION.  IF YOU MISS"
60 PRINT "YOU FACE THE CONSEQUENCES."
100 A=INT(RND(1)*50)
110 W=7*A/3
120 PRINT A;" LITERS OF KRYPTOCYANIC ACID.  HOW MUCH WATER";
130 INPUT R
140 D=ABS(W-R)
150 IF D>W/20 THEN 200
160 PRINT " GOOD JOB! YOU MAY BREATHE NOW, BUT DON'T INHALE THE FUMES!"
170 PRINT
180 GOTO 100
200 PRINT " SIZZLE!  YOU HAVE JUST BEEN DESALINATED INTO A BLOB"
210 PRINT " OF QUIVERING PROTOPLASM!"
220 T=T+1
230 IF T=9 THEN 260
240 PRINT " HOWEVER, YOU MAY TRY AGAIN WITH ANOTHER LIFE."
250 GOTO 100
260 PRINT " YOUR 9 LIVES ARE USED, BUT YOU WILL BE LONG REMEMBERED FOR"
270 PRINT " YOUR CONTRIBUTIONS TO THE FIELD OF COMIC BOOK CHEMISTRY."
280 END
