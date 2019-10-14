; Solution to Problem 1
(defun sum (l)
	(if (null l)
			0
			(let ((x (sum (cdr l))))
				(+ x (car l)))))

;Solution to Problem 2

; B. NEG-NUMS is a function that is already defined on venus and euclid; if L is any list of real
;  numbers then (NEG-NUMS L) returns a new list that consists of the negative elements of L. For
;  example: (NEG-NUMS '(–1 0 –8 2 0 8 –1 –8 2 8 4 –3 0) ) => (–1 –8 –1 –8 –3).
;  Complete the following definition of a function MY-NEG-NUMS without making further calls
;  of NEG-NUMS and without calling MY-NEG-NUMS recursively, in such a way that if L is
;  any nonempty list of numbers then (MY-NEG-NUMS L) is equal to (NEG-NUMS L).
;  (defun my-neg-nums (L)
;  (let ((X (neg-nums (cdr L))))
;  ______________________________________
;  ____________ ))
;  There are two cases: (car L) may or may not be negative.


(defun neg-nums (l)
	(if (null l)
		nil
		(let ((x (neg-nums (cdr l))))
			; car l is negative
			(cond ((minusp (car l)))
							(cons (car l) x))
						(t x))))
