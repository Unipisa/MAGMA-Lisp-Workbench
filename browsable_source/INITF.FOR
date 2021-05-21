      SUBROUTINE INITF
C
      IMPLICIT INTEGER(A-Z)
      COMMON / KK1 / KK1
      COMMON / NUMCXT / NUMCXT
C STAT
C STAT  COMMON /CONTIN/CONTIN
      COMMON / PUNOUT / PUNOT
      COMMON / CONTAP / CONTAP
      COMMON /RESTAR/ RESTAR
C
      INTEGER*2
     *CXT,KEY,UNO,COMPT,ARRAYT,
     *LISTT,BASEFT,COMMAT,NLAMBD,NNAMBD,ATOMT,NAPPID,REDEFT,
     *CXTT,STR,TUPLE,CLASS,BAG,LNUM,SNUM,RUNO,NREDMO,
     *R,S,CXTX,PADRE,FIRSTS,FIRSTB,LIST,LIB,L,FAPMT,
     *ACXT,CXTC,AAK,RADIX,RRADIX
      DOUBLE PRECISION
     *PUNTI,NPRINA,PRINO,NBLANK,PLATO
      COMMON
C     */ ABLOCK / V1(3),ABLOCK(2568)
C     */ABLOCK/V1(3),ABLOCK(5136)
     */ABLOCK/V1(3),ABLOCK(7704)
C     */ BBLOCK / V2(3),BBLOCK(3072) 
C     */BBLOCK/V2(3),BBLOCK(6144)
     */BBLOCK/V2(3),BBLOCK(9616)
C     */ CBLOCK / V3(3),CBLOCK(4096)
C     */CBLOCK/ V3(3),CBLOCK(8192)
     */CBLOCK/V3(3),CBLOCK(12288)
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
     */ PADRE / F4(3),PADRE(128)
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
      COMMON /ERMSG /ERMSG(10,50)
     * /NUMER/NUMER
C
      COMMON
     */ ITRACE /ITRACE
C
     */ PTRACE / PTRACE
C
     */ ECHOGC / ECHOGC
C STAT
C STAT
      COMMON /CONCON/ CONCON
C
      DIMENSION
C    *DATA1(9),DATA4(9),DATA2( 20),DATA3(20),
C    *DATA1(14),DATA4(9),DATA2(20),DATA3(20),
     *FUN(1284),RETP(1284),CP(1284),BLP(1284),SEGNO(1284),ABP(1284),
     *BIND(3072),VAR(3072),BBP(3072),SONBRO(4096),NREENT(4096),
     *VALORE(40 96),INF(4096),LISTAR(4096),BLINK(4096)
C
      EQUIVALENCE
     *( ABLOCK(1),FUN(1)).
     *( ABLOCK(2),RETP(1)),
     *(ABLOCK(3),CP(1)),
     *( ABLOCK(4),BLP( 1)),
     *(ABLOCK(5),SEGNO( 1)),
     *(ABLOCK(6),ABP(1)),
     *( BBLOCK(1),BIND(1)),
     *(BBLOCK(2),VAR( 1)),
     *( BBLOCK(3),BBP(1)),
     *(CBLOCK(1),SONBRO(1)),
     *(CBLOCK(2),NREENT(1)),
     *(CBLOCK(3),VALORE(1)),
     *(CBLOCK(3),INF( 1)),
     *(CBLOCK(4),LISTAR(1)),
     *(CBLOCK(4),BLINK( 1)),
     *(ZSPAZ,NBLANK)
      DATA ZNILLL/205000000/,ZNTYPE/2010000007,ZBASE/200800000/
      DATA MASK 3B / ZOOFFFFFF /,MASK4B / ZFFOOFFFF /
      DATA MASK5B /ZFFFFOOFF /,MASK6B / ZFFFFFFOO /
      DATA MASK 7B / 2000000FF
      DATA UNO/1/
C     DATA
c    *DATA1/.(LAM','BDA(',')(PR','INT(','APPL','Y(RE','AD ''',
C    *'INPU'.'T)(R','EAD ','''INP','UT))','''OUT','PUT>'/,
C    *DATA1/*(LAM','BDA(',')(PR','INT(','APPL','Y(RE','AD)(',
C    *'READ','>   '/,
C    *DATA2/(LAM','BDA(','X Y ','Z)<P','UTD<','CAR(','SETO',' Y(R',
C    *'EAD ','X()Z','>(CD','R Y>','(APP','LY(Q','UOTE',
C    *'LOA ','D)(L','IST ','X()(',')Z> '/,
C    *DATA3/'(LAM','BDA(','*)(AP','PLY(','QUOT',E PE','RMES',')(CO',
C    *'NS(G','ETVA','L(QU','OTE ','ERRO','RN))',')()(','GETA','PF(Q',
C    *'UOTE',' LIS','PX> '/,
C    *DATA4/'(LAM','BDA(','$$$$','$$$X',')($$','EVAL','$$ $',
C    *'$$$$','$$X>'/
      DATA NBLANK/'        '/
