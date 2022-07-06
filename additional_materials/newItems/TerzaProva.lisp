(putdq label 
     (lambda (x) (set x  (getap)))))

(putdq go  
     (lambda (x) 
          (apply (quote (lambda () (quote)))
                 (cons x)
                 (cons x)))))

(putdq fun 
     (lambda (x a) 
          (label (quote a))
               (set (quote x) (cdr x))
               (cond ((quote t) 
                      ((lambda (y) (print (cons y y)) (getap))
                       x)))
               (cond ((eq (quote a) (car x))
                      (go a)
                     ((quote t)
                      x))))))

Comportamento: fun mangia tutte le "a" nel suo primo (e unico fornito) argomento, dopo averne escluso, per ragioni misteriose, il primo elemento.
               Ad ogni passo stampa due volte ciò che resta dell'argomento stesso. In questa prova, con argomento (b a b b),
               stampa  ((A B B) A B B), ((B B) B B) e poi restituisce (B B). Sehr compliziert!
Domanda: e' un  caso che la label si chiami "a", o e' necessario? Ossia, cambiando "a" in "l", tranne che a riga 17, cambia qualcosa?
Domanda: Cosa ci sta a fare il (getap) a linea 15? Per debug, visto che setdeb è attivo? Il valore viene perso...