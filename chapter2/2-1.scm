;; 此版本未处理数字0

;; 绝对值
(define (abs x)
  ( (if (> x 0) + -) x))

;; a和b的公约数
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

;; 构造一个分数n/d
(define (make-rat n d)
  (define (deduct n d)
    (let ((g (gcd (abs n) (abs d))))
      (cons (/ n g) (/ d g))))
  (if (< d 0)
      (deduct (- n) (- d))
      (deduct n d)))

;; 取分子
(define (numer x)
  (car x))

;; 取分母
(define (denom x)
  (cdr x))





