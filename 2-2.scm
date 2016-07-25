
;; 构造点
(define (make-point x y)
  (cons x y))
;; 获取x坐标
(define (x-point point)
  (car point))
;; 获取y坐标
(define (y-point point)
  (cdr point))

;; 构造线段
(define (make-segment start end)
  (cons start end))
;; 获取线段起点
(define (start-segment segment)
  (car segment))
;; 获取线段终点
(define (end-segment segment)
  (cdr segment))

;; 计算线段中点
(define (mid-point segment1 segment2)
  (define (mid a b)
    (/ (+ a b) 2))
  (let ( (x1  (x-point segment1))
	 (x2  (x-point segment2))
	 (y1  (y-point segment1))
	 (y2  (y-point segment2)))
    (make-point (mid x1 x2) (mid y1 y2))))

;; 打印点
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(define a (make-point 4 4))
(define b (make-point 10 10))
(define c (mid-point a b))
(print-point a)
(print-point b)
(print-point c)

  
