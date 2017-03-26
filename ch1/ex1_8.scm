(define (square x) (* x x))
(define (cube x) (* x (square x)))
(define (average x y) (/ (+ x y) 2))
(define (good-enough-legacy? guess prev-guess x) (< (abs (- (square guess) x)) 0.001)) 
(define (good-enough-improved? guess prev-guess x) (< (/ (abs (- guess prev-guess)) prev-guess) 0.000001))
(define (good-enough? guess prev-guess x) (good-enough-improved? guess prev-guess x))
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
(define (cbrt-iter guess prev-guess x)
  (display (cube guess))(newline)
  (if (good-enough? guess prev-guess x)
      guess
      (cbrt-iter (improve guess x) guess x)))
(define (cbrt x)
	(cbrt-iter 1.0 2.0 x))




