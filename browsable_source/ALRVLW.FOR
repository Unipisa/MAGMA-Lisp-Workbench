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
C       *       RVL LA CHIAVE AAK; SE E' PRESENTE:
C       *         1.1 SI SOSTITUISCE IL VALORE SOTTO LA CHIAVE AAK CON V;
C       *         1.2 SI COPIA IL VECCHIO VALORE DI AAK IN TUTTI I FIGLI
C       *               NON PRESENTI NELLA RVL;
C       *         1.3 RITORNO;
C       *       SE NON E' PRESENTE:
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
