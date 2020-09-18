(display "Введите число 1: ")(define n1 (read))
(display "Введите число 2: ")(define n2 (read))
(display (if
		(> n1 n2)
		"First number is greater"
		(if 
		  (> n2 n1)
		  "Second number is greater"
		  "Numbers are equal"
		)
	 )
)
