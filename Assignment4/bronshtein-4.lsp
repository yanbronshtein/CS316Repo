; Solution to Problem 1
(defun sum (l)
	(if (null l)
			0
			(let ((x (sum (cdr l))))
				(+ x (car l)))))

;Solution to Problem 2
(defun neg-nums (l)
	(if (null l)
		nil
		(let ((x (neg-nums (cdr l))))
			; car l is negative
			(cond ((minusp (car l))
							(cons (car l) x))
						(t x)))))

;Solution to Problem 3
; C. INC-LIST-2 is a function that is already defined on venus and euclid; if L is any list of numbers and
;  N is a number then (INC-LIST-2 L N) returns a list of the same length as L in which each element
;  is equal to (N + the corresponding element of L). For example,
;  (INC-LIST-2 ( ) 5) => NIL (INC-LIST-2 '(3 2.1 1 7.9) 5) => (8 7.1 6 12.9)
;  Complete the following definition of a function MY-INC-LIST-2 without making further calls
;  of INC-LIST-2 and without calling MY-INC-LIST-2 recursively, in such a way that if L is
;  any nonempty list of numbers and N is any number then (MY-INC-LIST-2 L N) is equal to
;  (INC-LIST-2 L N). 
; (defun my-inc-list-2 (L N)
;  (let ((X (inc-list-2 (cdr L) N)))
;  __________________________________ ))

(defun inc-list-2 (l n)
	(if (null l)
			nil
			(let ((x (inc-list-2 (cdr l) n)))
				(cons (+ (car l) n) x))))

