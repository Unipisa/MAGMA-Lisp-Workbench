C
      LZATOM = 2047
      ATMLUN = 24
      ATN = 3
      DO 203 I=1,LZATOM
      APUNT (I) = I+1
203   ATNAME (I) = I*ATN
      LTAT = LZATOM*ATN+ATN-1
      LMAT = LTAT-10*ATN
      LMAT1 = LMAT+ 1
      DO 204 I=1,LMAT
      NPRINA(I) = NBLANK
204   CONTINUE
      DO 205 I=LMAT1,LTAT
      NPRINA(I) = PUNTI(1)
205   CONTINUE
      APUNT(LZATOM) = -2
      AAAPUN = 1
      ATN = 0
      LIBAT = 0
C
C    NUOVA COLLOCAZIONE HASH
C
      REWIND 3
      INNN= 1
      READ(3,78601) NUMATO,NUMER
78601 FORMAT(2I3)
      CALL ASSBLK(PLATO,ATMLUN)
      DO 131 I=1,17
      READ (3, 132) PLATO(1),FDE
      K=INSAT(7171)
      KK=MOD(K,NTYPEE)
      GOTO (141,142,143,144,145,146,147,148,149,150,151,153,154,
     *155,156,157,158),I
141   NIL=K
      OKK=KK
      B5(4)=NIL
      B4(4)=NIL
      DO 192 II=1,LZATOM
      PLIST(II)=NIL
192   FDEF(II)=NIL
      GOTO 131
142   NOBIND=K
      B3(4)=NOBIND
      DO 190 II=1,LZATOM
190   VALUE(II)=NOBIND
      VALUE(OKK)=NIL
      GOTO 131
143   T=K
      VALUE(KK)=T
      GOTO 131
144   LAMBDA=K
      GOTO 131
145   PROG=K
      FDEF(KK) = FDE