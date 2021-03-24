C       /******************************************************************
C       *           == SCRITTURA DI UN VALORE NELLA RVL ==
C       *
C       *       PARAMETRI DI INPUT:
C       *                       V = NUOVO VALORE DA ASSOCIARE AD
C       *                           UNA VARIABILE;
C       *                       P = PUNTATORE OPPURE VALORE
C       *                           RELATIVA ALLA VARIABILE IN ESAME
C       *       PARAMETRI IN EXTERNAL :
C       *                           AAK = CHIAVE DI ACCESSO DA USARE;
C       *                           NREDMO = SWITCH;
C       *                           RRADIX = CHIAVE DELLA RADICE DELLO
C       *                                   ALBERO DELLE CHIAVI.
C       *       (A) SE TIPO DI DATO = / REDEFT (VEDI RVLR), ALLORA SE:
C       *           1) NREDMO=0 (VUOL DIRE CHE ESISTE UN SOLO CONTESTO)
C       *              SI MODIFICA P, ASSEGNANDOGLI DIRETTAMENTE V
C       *              E RITORNA;
C       *           2) NREDMO= /0 (VUOL DIRE CHE ESISTONO PIU' CONTESTI)
C       *              SI COSTRUISCE UNA RVL CON IL CONTENUTO DI P SOTTO LA
C       *              CHIAVE RRADIX E SI PROCEDE CON IL PUNTO (B) .
C       *       (B) SE IL TIPO DI DATO = REDEFT ALLORA SI RICERCA NELLA
C       *       RVL LA CHIAVE AAK; SE E` PRESENTE:
C       *         1.1 SI SOSTITUISCE IL VALORE SOTTO LA CHIAVE AAK CON V;
C       *         1.2 SI COPIA IL VECCHIO VALORE DI AAK IN TUTTI I FIGLI
C       *               NON PRESENTI NELLA RVL;
C       *         1.3 RITORNO;
C       *       SE NON E` PRESENTE:
C       *         2.1 SI INSERISCE NELLA RVL AL POSTO GIUSTO LA CHIAVE
C       *             AAK CON ASSOCIATO IL VALORE V;
C       *         2.2 SI SCRIVE IL VALORE DEL PRIMO AVO PRESENTE DI AAK
C       *             IN TUTTI I FIGLI NON PRESENTI NELLA RVL;
C       *         2.3 RITORNO;
C   *****************************************************************
        SUBROUTINE ALRVLW (V,P)
            IMPLICIT INTEGER (A-Z)
        INTEGER*2
        *R,S,FIRSTB,FIRSTS,NREDMO,RRADIX,REDEFT,J
        *,AAK
         COMMON
        */R/ V1(3),R(128)
        */S/ V2(3),S(128)
        */FIRSTS/ V4(3),FIRSTS(128)
        */FIRSTB/ V5(3),FIRSTB(128)
        */CAR/ V6(4),CAR (15767)
        */CDR/ V7(4),CDR (15767)
        $/NIL/ NIL
        */REDEFT / REDEFT
        */NREDMO / NREDMO
        */RRADIX/ RRADIX
        */ LISTA/ PILAAA(250), PILABB(250)
        */NTYPEE/ NTYPEE
        */ AAK/ AAK
C   
        LOGICAL TEXT
C   
C   
        IF(NREDMO.NE.0) GO TO 222
2222    P = V
        GOTO 410
222     IF (P/NTYPEE.EQ.REDEFT) GOTO 1
        IRADIX = RRADIX
        P=CONSF(CONSF(IRADIX,P),NIL)
        K2=R(RRADIX)
        P = REDEFT*NTYPEE+CONSF(CONSF(K2,P),P)
1       K1 = MOD(P,NTYPEE)
        K11=K1
         K12=CAR(K11)
        K 1=CDR(K1)
        K2 = K1
        AAK1 = AAK
        LF = NIL
C
C           SI CONTROLLA SE AAK HA FIGLI
C
        IF(FIRSTS(AAK).EQ.0) GO TO 58
C
C           AAK HA FIGLI
C
        AKA = FIRSTS(AAK)
C
C           RICERCO I FIGLI NON PRESENTI NELLA RVL
C
4       RK = CAR(CAR(K2))
5       IF (R(AKA).GE.R(RK)) GO TO 30
6       K4 = K2
        K2 = CDR(K2)
        GO TO 4
C
C           HO TROVATO IL FIGLIO O IL POSTO PER INSERIRLO NELLA BVL.
C
30      IF (R(AKA).EQ.R(RK)) GO TO 40
C
C           CREO UN APPOSITO ELEMEENTO PER IL FIGLIO E LO INSERISCO NELLA
C           LISTA OPPORTUNAMENTE. AL POSTO DEL VALORE METTO UN PUNTATORE
C           INDIETRO . QUESTO MI DARA` LA POSSIBILITA`, UNA VOLTA GIUNTO
C           ALLA FINE DELLA RICERCA, DI ASSEGNERE IL VALORE DEL PRIMO AVO
C           DEI FIGLI (AAK O PRIMO AVO DI AAK) IN UNA SOLA PASSATA.

        LF = CONSF (AKA,LF)
        LP = CONSF (LP,K2)
C
C           CONTROLLO SE SONO IN TESTA ALLA BVL
        IF (K1.NE.K2) GO TO 50
C
C           LO INSERISCO IN TESTA ALLA RVL.
C
        K1 = LP
        K4 = K1
        GO TO 53
C
C           LO INSERISCO OPPORTUNAMENTE. (K4 PUNTATORE PRECEDENTE)
50      CDR(K4) = LP
        K4 = LP
        GO TO 53
C
C           IL FILGIO E` PRESENTE NELLA RVL.
C           LO SCARTO E PROSEGUO LA RICERCA DI EVENTUALI FIGLI DI AKK.
C
40      AKA = FIRSTB(AKA)
        IF (AKA.NE.0) GO TO 6
C
C           NON CI SONO PIU` FIGLI DI AAK.
C           SPOSTO IL PUNTATORE PER PRENDERE LA POSIZIONE SUCCESSIVA
C
        K4 = K2
        K2 = CDR(K2)
        RK = CAR(CAR(K2))
        GO TO 57
C
C           FACCIO IL TEST PER FINE FIGLI DI AAK.
C            PROVENGO DA UN INSERIMENTO.
C
53      AKA = FIRSTB(AKA)
        IF (AKA. NE .O) GO TO 5
C
C           L`ELEMENTO PUNTATO DA K2 DOVREBBE ESSERE AAK SE QUESTO
C           E` PRESENTE NELLA RVL. ALTRIMENTI DEVO INSERIRE AAK.
C            NOTARE CHE PROVENGO DALLA RICERCA DEI FIGLI DI AAK
C
57      IF (R(AAK).EQ.R(RK)) GO TO 85
C
C           AAK NON ESISTE. LO INSERISCO E RICERCO IL PRIMO AVO DI AAK ..
C 
68      CDR(K4) = CONSF(CONSF(AAK1,V),K2)
        CAR(K12) = R(AAK1)
         CDR(K12) = CDR(K4)
C
C            RICERCA DEL PRIMO AVO DI AAK.
C
C           SE PERO` AAK NON AVEVA FIGLI E` DEL TUTTO INUTILE
C           CERCARE IL PRIMO AVO DI AAK.
C
65      IF (LF.EQ.NIL) GOTO 90
165     IF (S(RK).GE.R(AAK)) GO TO 70
        K2 = CDR(K2)
        RK = CAR(CAR(K2))
        GO TO 165
C
