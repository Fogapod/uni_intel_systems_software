(display "Введите вещественное число: ")(define x (read))
(define list '())
(define list 
  (
    cons (if (< x 0) "-" "+")
    (
      cons (abs x)
      (
        cons (round x) '()
      )
    )
  )
)
(display list)
