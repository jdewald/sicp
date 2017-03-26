(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))
(define (good-enough-legacy? guess prev-guess x) (< (abs (- (square guess) x)) 0.001)) 
(define (good-enough-improved? guess prev-guess x) (< (/ (abs (- guess prev-guess)) prev-guess) 0.0001))
(define (good-enough? guess prev-guess x) (good-enough-improved? guess prev-guess x))
(define (improve guess x)
  (average guess (/ x guess)))
(define (sqrt-iter guess prev-guess x)
  (display (square guess))(newline)
  (if (good-enough? guess prev-guess x)
      guess
      (sqrt-iter (improve guess x) guess x)))
(define (sqrt x)
	(sqrt-iter 1.0 2.0 x))




