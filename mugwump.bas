1 PRINT TAB(33);"MUGWUMP"
2 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
3 PRINT:PRINT:PRINT
4 REM     COURTESY PEOPLE'S COMPUTER COMPANY
10 DIM P(4,2)
20 PRINT "THE OBJECT OF THIS GAME IS TO FIND FOUR MUGWUMPS"
30 PRINT "HIDDEN ON A 10 BY 10 GRID.  HOMEBASE IS POSITION 0,0."
40 PRINT "ANY GUESS YOU MAKE MUST BE TWO NUMBERS WITH EACH"
50 PRINT "NUMBER BETWEEN 0 AND 9, INCLUSIVE.  FIRST NUMBER"
60 PRINT "IS DISTANCE TO RIGHT OF HOMEBASE AND SECOND NUMBER"
70 PRINT "IS DISTANCE ABOVE HOMEBASE."
80 PRINT
90 PRINT "YOU GET 10 TRIES.  AFTER EACH TRY, I WILL TELL"
100 PRINT "YOU HOW FAR YOU ARE FROM EACH MUGWUMP."
110 PRINT
240 GOSUB 1000
250 T=0
260 T=T+1
270 PRINT
275 PRINT
290 PRINT "TURN NO.";T;" -- WHAT IS YOUR GUESS";
300 INPUT M,N
310 FOR I=1 TO 4
320 IF P(I,1)=-1 THEN 400
330 IF P(I,1)<>M THEN 380
340 IF P(I,2)<>N THEN 380
350 P(I,1)=-1
360 PRINT "YOU HAVE FOUND MUGWUMP ";I
370 GOTO 400
380 D=SQR((P(I,1)-M)^2+(P(I,2)-N)^2)
390 PRINT "YOU ARE ";(INT(D*10))/10;" UNITS FROM MUGWUMP ";I
400 NEXT I
410 FOR J=1 TO 4
420 IF P(J,1)<>-1 THEN 470
430 NEXT J
440 PRINT
450 PRINT "YOU GOT THEM ALL IN ";T;" TURNS!"
460 GOTO 580
470 IF T<10 THEN 260
480 PRINT
490 PRINT "SORRY, THAT'S 10 TRIES.  HERE IS WHERE THEY'RE HIDING:"
540 FOR I=1 TO 4
550 IF P(I,1)=-1 THEN 570
560 PRINT "MUGWUMP ";I;" IS AT (";P(I,1);",";P(I,2);")"
570 NEXT I
580 PRINT
600 PRINT "THAT WAS FUN! LET'S PLAY AGAIN......."
610 PRINT "FOUR MORE MUGWUMPS ARE NOW IN HIDING."
630 GOTO 240
1000 FOR J=1 TO 2
1010 FOR I=1 TO 4
1020 P(I,J)=INT(10*RND(1))
1030 NEXT I
1040 NEXT J
1050 RETURN
1099 END
