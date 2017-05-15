(define (+ a b)
	(if (= a 0)
		b
		(inc (+ (dec a) b))))

(+ 4 5)
	(inc (+ 3 5))
		(inc (+ 2 5))
			(inc (+ 1 5))
				(inc (+ 0 5))
					5
				6
			7
		8
	9
9

Recursive - need the result of each to finish

(define (+ a b)
	(if (= a 0)
		b
		(+ (dec a) (inc b))))

(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 0 8)
(+ 0 9)
9

Iterative - result is ready as soon as last is complete


