
Scansioni del 10 aprile 2021

RINCA e TEST sono chiamate dalle funzioni che manipolano le RVL. 
STRVL è una routine di debug che visualizza le RVL stesse.

INITF (incompleto, mancano le righe da 331 a alla fine 660) contiene tutti i COMMON e l'inzializzazione del meccanismo dei contesti.

Altre son legate al Garbage Collector:
ALGARB permette la chiamata esplicita del GC da progemma Lisp.
CAT Raccoglie gli atomi.
PROP agisce sulle liste di proprietà.
MRVLC agisce sulle RVL a partire dal C-Block.
GHEAD è un punto d'ingresso ne GC.

CSETUP (datata 1980) è la chiamata al codice compilato e relativo ritorno. Si invoca una MM (Magma Machine?).