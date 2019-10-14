; Solution to Problem 1
(defun sum (l)
	(if (null l)
			0
			(let ((x (sum (cdr l))))
				(+ x (car l)))))

; Solution to Problem 2
(defun neg-nums (l)
	(if (null l)
		nil
		(let ((x (neg-nums (cdr l))))
			; car l is negative
			(cond ((minusp (car l))
							(cons (car l) x))
			; car l is positive
						(t x)))))

; Solution to Problem 3
(defun inc-list-2 (l n)
	(if (null l)
			nil
			(let ((x (inc-list-2 (cdr l) n)))
				(cons (+ (car l) n) x))))


; Solution to Problem 4
(defun insert (n l)
	(if (null l)
      (list n)
      (if (> (car l) n) 
       		(cons n l)
       		(let ((x (insert n (cdr l))))
          	(cons (car l) x)))))



; Solution to Problem 5
(defun isort (l)
	(if (null l)
			nil
			(let ((x (isort (cdr l))))
				(insert (car l) x))))

; Solution to Problem 6

; F. SPLIT-LIST is a function that is already defined on venus and euclid; if L is any list then
;  (SPLIT-LIST L) returns a list of two lists, in which the first list consists of the 1st, 3rd, 5th, ...
;  elements of L, and the second list consists of the 2nd, 4th, 6th, ... elements of L. Examples:
;  (SPLIT-LIST ( )) => (NIL NIL) (SPLIT-LIST '(A B C D 1 2 3 4 5)) => ((A C 1 3 5) (B D 2 4))
;  (SPLIT-LIST '(B C D 1 2 3 4 5)) => ((B D 2 4) (C 1 3 5)) (SPLIT-LIST '(A)) => ((A) NIL)
;  Complete the following definition of a function MY-SPLIT-LIST without making further calls of
;  SPLIT-LIST and without calling MY-SPLIT-LIST recursively, in such a way that if L is any
;  nonempty list then (MY-SPLIT-LIST L) is equal to (SPLIT-LIST L).
;  (defun my-split-list (L)
;  (let ((X (split-list (cdr L))))
;  __________________________________ ))
(defun split-list (l)
	(if (null l)
			nil
			(let ((x (split-list (cdr l))))
				(list (cons (car l) (cadr x)) (car x)))))


	; 





