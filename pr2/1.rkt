(define PI 3.14159216)
(display "Вычисление радиуса кольца")(newline)
(display "Радиус кольца: ")(define r (read))
(display "Радиус отверстия: ")(define ri (read))
(display (if
	   (> ri r)
	   "Радиус отверстия должен быть меньше радиуса кольца"
	   (- (* PI (* r r)) (* PI (* ri ri)))
	 )
)
