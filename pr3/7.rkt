(define (getnth lst n)
  (if (= n 0) (car lst) (getnth (cdr lst) (- n 1)))
)

(define (is_all_nums_at lst positions)
  (if
    (null? positions)
    #t
    (and
      (number? (getnth lst (car positions)))
      (is_all_nums_at lst (cdr positions))
    )
  )
)

(define (sum_at lst positions)
  (if
    (null? positions)
    0
    (+
      (getnth lst (car positions))
      (sum_at lst (cdr positions))
    )
  )
)

(define (length lst)
  (if (null? lst) 0 (+ 1 (length (cdr lst))))
)

(define (main lst)
  (define positions '(1 3 7))

  (if
    (is_all_nums_at lst positions)
    (sum_at lst positions)
    (getnth lst (- (length lst) 1))
  )
)

(display (main '(1  2  3 4 5 6 7 8 9 12 15 22 27)))(display "\n")
(display (main '(1 "2" 3 4 5 6 7 8 9 12 15 22 27)))
