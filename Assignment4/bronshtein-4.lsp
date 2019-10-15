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
(defun split-list (l)
	(if (null l)
			nil
			(let ((x (split-list (cdr l))))
				(list (cons (car l) (cadr x)) (car x)))))

; Solution to Problem 7
; G. PARTITION is a function that is already defined on venus and euclid; if L is a list of real
;  numbers and P is a real number then (PARTITION L P) returns a list whose CAR is a list of the
;  elements of L that are strictly less than P, and whose CADR is a list of the other elements of L.
;  Each element of L must appear in the CAR or CADR of (PARTITION L P), and should appear
;  there just as many times as in L. Examples: (PARTITION '(7 5 3 2 1 5) 1) => (NIL (7 5 3 2 1 5))
;  (PARTITION '(4 0 5 3 1 2 4 1 4) 4) => ((0 3 1 2 1) (4 5 4 4)) (PARTITION ( ) 9) => (NIL NIL)
;  Complete the following definition of a function MY-PARTITION without making further calls
;  of PARTITION and without calling MY-PARTITION recursively, in such a way that if L is any
;  nonempty list of real numbers and P is a real number then (MY-PARTITION L P) is equal to
;  (PARTITION L P). (
; defun my-partition (L P)
;  (let ((X (partition (cdr L) P)))
;  ___________________________________________
;  ___________________________________________ ))
;  There are two cases: (car L) may or may not be less than P.

(defun partition (l p)
	(if (null l)
			nil
			(let ((x (partition (cdr l) p)))

				; if (car l)<p, prepend it to car list
				(cond ((< (car l) p)
								(list (cons (car l) (car x)) (cadr x)))
				; if (car l)>=p, prepend it to the cdr list
							(t (list (car x) (cons (car l) (cadr x))))))))
				




	; 





