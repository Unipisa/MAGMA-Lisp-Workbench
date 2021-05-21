      SUBROUTINE INITF
C
      IMPLICIT INTEGER (A-Z)
      COMMON / KK1 / KK 1
      COMMON / NUMCXT / NUMCXT
C STAT
C STAT  COMMON /CONTIN/CONTIN
      COMMON / PUNOUT / PUNOT
      COMMON / CONTAP / CONTAP
      COMMON /RESTAR/ RESTAR
C
      INTEGER*2
     *CXT, KEY, UNO, COMPT, ARRAYT,
     *LISTT, BASEFT, COMMAT , NLAMBD, NNAMBD, ATOMT, NAPPID, REDEFT,
     *CXTT, STR, TUPLE, CLASS, BAG, LNUM, SNUM , RUNO, NREDMO,
     *R , S, CXTX, PADRE, FIRSTS, FIRSTB, LIST, LIB, L, FAPMT,
     *ACXT, CXTC , AAK, RADIX , RRADIX
      DOUBLE PRECISION
     *PUNTI, NPRINA, PRINO, NBLANK , PLATO
      COMMON
C     */ ABLOCK / V1 (3) ,ABLOCK (2568)
C     */ABLOCK/V1 (3) , ABLOCK (5136)
     */ABLOCK/V 1 (3) ,ABLOCK (7704)
C     */ BBLOCK / V2 (3) , BBLOCK (3072) 
C     */BBLOCK/V2 (3) , BBLOCK (6144)
     */BBLOCK/V2 (3) , BBLOCK (9616)
C     */ CBLOCK / V3 (3) ,CBLOCK (4096)
C     */CBLOCK/ V3 (3) , CBLOCK (81 92)
     */CBLOCK/V 3 (3) , CBLOCK ( 1228 8)
     */ FLA / FLA
     */ FLB FLB
     */ FLC / FLC
     */ NAPPOI / NAPPOI
     */ BPOINT / BPOINT
     */ CPOINT / CPOINT
     */ ISW1 / ISW1
     */ OSW1 / OSW1
C
      COMMON
     */ NIL / NIL
     */ NOBIND / NOBIND
     */ LAMBDA / LAMBDA
     */ LISPX / LISPX
     */ ERRORX / ERRORX
     */ PROG / PROG
     */ QUOTE / QUOTE
     */ T / T
     */ EOF / EOF
     */ DDNARG / DDNARG
C
      COMMON
     */ EOR / EOR
     */ PROGN / PROGN
     */ NLAMBA / NLAMBA
     */ FAULTV / FAULTV
     */ ERREXP / ERREXP
     */ ERRORN / ERRORN
     */ MCONS / / MCONS
     */ MEVAL / MEVAL
     */ ZNIL / ZNIL
     */DCLV/DCLV
C
C
      COMMON
     */ LISTT / LISTT
     */ BASEFT / BASEFT
     */ COMMAT / COMMAT
     */ NLAMBD / NLAMBD
     */ ATOMT / ATOMT
     */ NNAMBD / NNAMBD
     */ NAPPID / NAPPID
     */ REDEFT / REDEFT
     */ CXTT / CXTT
     */ COMPT /COMPT
     */ARRAYT/ARRAYT
     */ STR / STR
     */ TUPLE / TUPLE
     */ CLASS / CLASS
     */ BAG / BAG
     */ LNUM / LNUM
     */ SNUM / SNUM
C
C
      COMMON
     */ ALMODE / ALMODE
     */ FLAG / FLAG
     */BUFLAG /BUFLAG
     */ UNNO / UNNO
     */ NTYPEE / NTYPEE
     */ ATOMT1 / ATOMT1
     */ NATOML / NATOML
     */ UNNO2 / UNNO2
     */ RUNO / RUNO
C
      COMMON
     */ NREDMO / NREDMO
     */ STRC / STRC
     */ COMMAM / COMMAM
     */ BASEFM / BASEFM
C
      COMMON
     */ CXT / D1(3),CXT(256)
     */ KEY / D2(3),KEY(256)
     */ R / F1(3),R(128)
     */ S / F2(3),S(128)
     */ CXTX / F3(3),CXTX(128)
     */ PADRE / F4(3),PADRE (128)
     */ FIRSTS / F5(3),FIRSTS(128)
     */ FIRSTB / F6(3),FIRSTB(128)
     */ LIST / F7(3),LIST(128)
     */ LIB / LIB
     */ ACXT / ACXT
     */ CXTC / CXTC
     */ AAK / AAK
     */PPDEM / PPDEM
     */CXTM / CXTM
     */ RADIX / RADIX
     */ RRADIX / RRADIX
C
      COMMON
     */ L / L
     */ CPLIST / BBC(3),CPLIST(128)
     */ FAPMT / FAPMT
C
      COMMON
     */ BASE / BASE
     */ EXES / EXES
     */ LGN / A1(4),LGN(1023)
C
      COMMON
     */ CAR / B1(4),CAR(40000)
     */ CDR / B2(4),CDR(40000)
     */ FSSIZE / FSSIZE
     */ASIZE/ASIZE
     */BSIZE/BSIZE  /CSIZE/CSIZE
     */ FLFS / FLPS
C
      COMMON
     */ VALUE / B3(4),VALUE(2047)
     */ PDEF / B4(4),FDEP(2047)
     */ PLIST / B5(4),PLIST(2047)
     */ NPRINA / B6(4),PRINO,NPRINA(6143)
     */LENGTH/LENGTH
     */LZATOM / LZATOM
     */ATOMO/ PLATO(4)
     */ PUNTI / PUNTI(4)
     */SYSAT / SYSAT(30)
     */ ALIST / ALIST(128)
     */ APUNT / AAAPUN,APUNT(2047)
     */ ATNAME / ATN,ATNAME(2047)
     */ ATMLUN / ATHLUN
     */ LIBAT / LIBAT
      COMMON /TAT/TAT(3)
C**   CONTIENE - NIL,NOBIND,T -
C
      COMMON/ BUFIO / FCBIN(20),FCBOUT(19),BUFIN(33),BUFOUT(30),
     *STATUS,CARDIN,COMMAR,BUFB(30)
C
      COMMON/ BINSP/ BINSPL,BINSP0,BINSP(16383)
      COMMON / BINSTK / BINSTK(1024)
      COMMON / MMFLAG / MMFLAG
      COMMON / BBBBBB / B
C
