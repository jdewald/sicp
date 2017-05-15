(define (f-rec n)
	(if (< n 3)
		n
		(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))
	)
)

(define (f-iter n)
)
(define (f-iter-internal n index sum)
	(if (< n 3)
		(if (< index 1)
			n
			(* (f-iter-internal (- (n index)) (- (index 1)) sum) index)
		)
		(f-iter-internal n 3 sum)
	)
)
(define (f n) (f-rec n))



