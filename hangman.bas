10 PRINT TAB(32);"HANGMAN"
20 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
25 PRINT:PRINT:PRINT
30 DIM P$(12,12),L$(20),D$(20),N$(26),U(50)
40 C=1: N=50
50 FOR I=1 TO 20: D$(I)="-": NEXT I: M=0
60 FOR I=1 TO 26: N$(I)="": NEXT I
70 FOR I=1 TO 12: FOR J=1 TO 12: P$(I,J)=" ": NEXT J: NEXT I
80 FOR I=1 TO 12: P$(I,1)="X": NEXT I
90 FOR I=1 TO 7: P$(1,I)="X": NEXT I: P$(2,7)="X"
95 IF C<N THEN 100
97 PRINT "YOU DID ALL THE WORDS!!": STOP
100 Q=INT(N*RND(1))+1
110 IF U(Q)=1 THEN 100
115 U(Q)=1: C=C+1: RESTORE: T1=0
150 FOR I=1 TO Q: READ A$: NEXT I
160 L=LEN(A$): FOR I=1 TO LEN(A$): L$(I)=MID$(A$,I,1): NEXT I
170 PRINT "HERE ARE THE LETTERS YOU USED:"
180 FOR I=1 TO 26: PRINT N$(I);: IF N$(I+1)="" THEN 200
190 PRINT ",";: NEXT I
200 PRINT: PRINT: FOR I=1 TO L: PRINT D$(I);: NEXT I: PRINT: PRINT
210 INPUT "WHAT IS YOUR GUESS";G$: R=0
220 FOR I=1 TO 26: IF N$(I)="" THEN 250
230 IF G$=N$(I) THEN PRINT "YOU GUESSED THAT LETTER BEFORE!": GOTO 170
240 NEXT I: PRINT "PROGRAM ERROR.  RUN AGAIN.": STOP
250 N$(I)=G$: T1=T1+1
260 FOR I=1 TO L: IF L$(I)=G$ THEN 280
270 NEXT I: IF R=0 THEN 290
275 GOTO 300
280 D$(I)=G$: R=R+1: GOTO 270
290 M=M+1: GOTO 400
300 FOR I=1 TO L: IF D$(I)="-" THEN 320
310 NEXT I: GOTO 390
320 PRINT: FOR I=1 TO L: PRINT D$(I);: NEXT I: PRINT: PRINT
330 INPUT "WHAT IS YOUR GUESS FOR THE WORD";B$
340 IF A$=B$ THEN 360
350 PRINT "WRONG.  TRY ANOTHER LETTER.": PRINT: GOTO 170
360 PRINT "RIGHT!!  IT TOOK YOU";T1;"GUESSES!"
370 INPUT "WANT ANOTHER WORD";W$: IF W$="YES" THEN 50
380 PRINT: PRINT "IT'S BEEN FUN!  BYE FOR NOW.": GOTO 999
390 PRINT "YOU FOUND THE WORD!": GOTO 370
400 PRINT: PRINT: PRINT"SORRY, THAT LETTER ISN'T IN THE WORD."
410 ON M GOTO 415,420,425,430,435,440,445,450,455,460
415 PRINT "FIRST, WE DRAW A HEAD": GOTO 470
420 PRINT "NOW WE DRAW A BODY.": GOTO 470
425 PRINT "NEXT WE DRAW AN ARM.": GOTO 470
430 PRINT "THIS TIME IT'S THE OTHER ARM.": GOTO 470
435 PRINT "NOW, LET'S DRAW THE RIGHT LEG.": GOTO 470
440 PRINT "THIS TIME WE DRAW THE LEFT LEG.": GOTO 470
445 PRINT "NOW WE PUT UP A HAND.": GOTO 470
450 PRINT "NEXT THE OTHER HAND.": GOTO 470
455 PRINT "NOW WE DRAW ONE FOOT": GOTO 470
460 PRINT "HERE'S THE OTHER FOOT -- YOU'RE HUNG!!"
470 ON M GOTO 480,490,500,510,520,530,540,550,560,570
480 P$(3,6)="-": P$(3,7)="-": P$(3,8)="-": P$(4,5)="(": P$(4,6)="."
481 P$(4,8)=".":P$(4,9)=")":P$(5,6)="-":P$(5,7)="-":P$(5,8)="-":GOTO 580
490 FOR I=6 TO 9: P$(I,7)="X": NEXT I: GOTO 580
500 FOR I=4 TO 7: P$(I,I-1)="\": NEXT I: GOTO 580
510 P$(4,11)="/": P$(5,10)="/": P$(6,9)="/": P$(7,8)="/": GOTO 580
520 P$(10,6)="/": P$(11,5)="/": GOTO 580
530 P$(10,8)="\": P$(11,9)="\": GOTO 580
540 P$(3,11)="\": GOTO 580
550 P$(3,3)="/": GOTO 580
560 P$(12,10)="\": P$(12,11)="-": GOTO 580
570 P$(12,3)="-": P$(12,4)="/"
580 FOR I=1 TO 12: FOR J=1 TO 12: PRINT P$(I,J);: NEXT J
590 PRINT: NEXT I: PRINT: PRINT: IF M<>10 THEN 170
600 PRINT "SORRY, YOU LOSE.  THE WORD WAS ";A$
610 PRINT "YOU MISSED THAT ONE.  DO YOU ";: GOTO 370
620 INPUT "TYPE YES OR NO";Y$: IF LEFT$(Y$,1)="Y" THEN 50
700 DATA "GUM","SIN","FOR","CRY","LUG","BYE","FLY"
710 DATA "UGLY","EACH","FROM","WORK","TALK","WITH","SELF"
720 DATA "PIZZA","THING","FEIGN","FIEND","ELBOW","FAULT","DIRTY"
730 DATA "BUDGET","SPIRIT","QUAINT","MAIDEN","ESCORT","PICKAX"
740 DATA "EXAMPLE","TENSION","QUININE","KIDNEY","REPLICA","SLEEPER"
750 DATA "TRIANGLE","KANGAROO","MAHOGANY","SERGEANT","SEQUENCE"
760 DATA "MOUSTACHE","DANGEROUS","SCIENTIST","DIFFERENT","QUIESCENT"
770 DATA "MAGISTRATE","ERRONEOUSLY","LOUDSPEAKER","PHYTOTOXIC"
780 DATA "MATRIMONIAL","PARASYMPATHOMIMETIC","THIGMOTROPISM"
990 PRINT "BYE NOW"
999 END
