(define (cube x) (* x (* x x)))

; general summation function provided by SICP
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

; integrate using Simpson's Method
; (h/3) * (y_0 + 4y_1 + 2y_2 + ... 2y_n-2 + 4y_n-1 + y_n)
; h = (b - a) / n
; y_k = f(a + kh)
(define (integral f a b n)
	(define (y k) (f (+ a (* k (/ (- b a) n)))))
	(define (inc x) (+ x 1))
	(define (mult-y k)
		(if (or (= k 0) (= k n))
			(y 0)
			(if (even? k)
				(* 2 (y k))
				(* 4 (y k))
			)
		)
	)
	(/ (* (/ (- b a) n) (sum mult-y 0 inc n)) 3)
)


