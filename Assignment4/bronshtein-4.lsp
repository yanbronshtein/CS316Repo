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
			; car l is positive
						(t x)))))

;Solution to Problem 3
(defun inc-list-2 (l n)
	(if (null l)
			nil
			(let ((x (inc-list-2 (cdr l) n)))
				(cons (+ (car l) n) x))))


;Solution to Problem 4

; D. INSERT is a function that is already defined on venus and euclid; if N is any real number and L is
;  any list of real numbers in ascending order then (INSERT N L) returns a list of numbers in
;  ascending order obtained by inserting N in an appropriate position in L. Examples: (INSERT 8 ( )) => (8) (INSERT 4 '(0 0 1 2 4)) => (0 0 1 2 4 4) (INSERT 4 '(0 0 1 3 3 7 8 8)) => (0 0 1 3 3 4 7 8 8)
;  Complete the following definition of a function MY-INSERT without making further calls
;  of INSERT and without calling MY-INSERT recursively, in such a way that if N is any real
;  number and L is any nonempty list of real numbers in ascending order then (MY-INSERT N L)
;  is equal to (INSERT N L). 
; (defun my-insert (N L)
;  (let ((X (insert N (cdr L))))
;  __________________________________
;  __________________________________ ))
;  [There are two cases: N may or may not be ≤ (car L). In the former case you do not need to use X,
;  so if you move that case outside the LET the function will be more efficient.]
; (defun insert (n l)
; 	(if (null l)
; 			nil
; 			(let ((x (insert n (cdr l))))
; 				(cond ((> n (car l))
; 								(cons (car l) x))))
; 			(cond ((<= n (car l))
; 							(cons n (car l))))))

; (defun insert (n l)
; 	(if (null l)
; 			nil
; 			(t (let ((x (insert n (cdr l))))
; 									(cons (car l) x))))))
			


; (defun insert (n l)
;    (if (null l)
;        (list n)
;        (let ((x (insert n (cdr l))))
;           (cond ((> (car l) n) (cons n l))
; 								(t (cons (car l) x))))))

(defun insert (n l)
	(if (null l)
      (list n)
      (if (<= (car l) n) 
       		(cons (car l) x)
       		(let ((x (insert n (cdr l))))
          	(cons n l)))))
							
       

			





