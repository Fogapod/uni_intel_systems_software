(display "Введите входные данные:")(newline)
(display "Величина первого сопротивления (Ом) = ")(define n1 (read))
(display "Величина первого сопротивления (Ом) = ")(define n2 (read))
(display "Сопротивление цепи: ")(display (truncate (/ (* n1 n2) (+ n1 n2))))(display " Ом")
