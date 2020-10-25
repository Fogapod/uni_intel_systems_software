(define (lpown lst iters n)
  (if
    (= 0 iters)
    lst
    (cons 
      (expt (car lst) n)
      (lpown (cdr lst) (- iters 1) n)
    )
  )
)

(define (main lst)
  (display (if
	     (= (modulo (car lst) 2) 0)
	     (lpown lst 3 2)
	     (lpown lst 3 3)
	   )
  )
)

(main '(1 2 4 9 12))
(main '(2 2 4 9 12))
