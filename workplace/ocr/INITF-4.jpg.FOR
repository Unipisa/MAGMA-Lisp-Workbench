COMMON /ERMSG /ERMSG (10,50)
* /NUMER/NUMER
C
COMMON
*/ ITRACE /ITRACE
C
*/ PTRACE / PTRACE
C
*/ ECHOGC / ECHOGC
CSTAT
CSTAT
COMMON /CONCON/ CONCON
C
DIMENSION
C
#DATA1 (9) , DATA4 (9) , DATA2 ( 20) , DATA 3 (20) ,
C
*DATA1 (14) , DATA4 (9) , DATA2 (20) , DATA 3 (20) ,
*FUN (1284) , RETP (1284) , CP (1284) , BLP (1284) , SEGNO (1284) , ABP (1284) ,
*BIND (3072) , VAR (3072) , BBP (3072) , SONBRO (4096) , NREENT (4096) ,
*VALORE (40 96) , INF (4096) , LISTAR (4096) , BLINK (4096)
C
EQUIVALENCE
* ( ABLOCK (1) , FUN (1) ).
* ( ABLOCK (2) , RETP (1)) ,
* (ABLOCK (3) , CP (1)) ,
* ( ABLOCK (4) , BLP ( 1) ) ,
* (ABLOCK (5) , SEGNO ( 1) ) ,
* (ABLOCK (6) , ABP (1) ) ,
* ( BBLOCK (1) , BIND (1) ) ,
* (BBLOCK (2) , VAR ( 1) ) ,
* ( BBLOCK (3) , BBP (1) ) ,
* (CBLOCK (1) , SONBRO (1)) ,
* (CBLOCK (2) , NREENT (1) ) ,
* (CBLOCK (3) , VALORE (1) ) ,
* (CBLOCK (3) , INF ( 1) ) ,
* (CBLOCK (4) , LISTAR (1) ) ,
* (CBLOCK (4) , BLINK ( 1) ) ,
* (ZSPAZ, NBLANK)
DATA ZNILLL/205000000/, ZNTYPE/2010000007, ZBASE/200800000/
DATA MASK 3B / ZOOFFFFFF /, MASK4B / ZFFOOFFFF /
DATA MASK5B /ZFFFFOOFF /, MASK6B / ZFFFFFFOO /
DATA MASK 7B / 2000000FF
DATA UNO/1/
DATA
#DATA 1/. (LAM' , 'BDA (" , ) (PR ", "INT (' , 'APPL" , "Y (RE" , "AD ...
** INPUT) (READ
INP'
"UT) ) * , ** * OUT" , "PUT>*/ ,
DATA1/* (LAM* * BDA (* * ) (PRINT (" , "APPL" , " Y (BE' , ' AD) (* ,
** READ * , * >
*DATA2/ (LAM' , 'BDA (' , 'X Y , Z) <Pt , FUTD<', CAR (' , 'SETO' , ' Y (R .,
** EAD " ()">(CD" " Y>* , * (APP", "LY (Q" , "UOTE",
** LOA ' , 'D) (L' , 'IST
*DATA3/* (LAM", "BDA (* , * ) (AP*
"PLY ( *, * QUOT" , "E PE', 'RMES", ") (CO)
** NS (G' , 'ETVA* , * L (QU *, * OTE
ERRO' , 'RN) ) ' , ') () (' , 'GETA' , 'PP (O",
** UOTE',
LIS' , ' PX>
*DATA4/' (LAM' , 'BDA (*
$$$$5,
' $ $$
,"EVAL ' , '$$ $1,
** $$$$ $$X>*/
DATA NBLANK/*
