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
(defun insert (n l)
	(if (null l)
      (list n)
      (if (> (car l) n) 
       		(list n l)
       		(let ((x (insert n (cdr l))))
          	(cons (car l) x)))))

;Solution to Problem 5
; E. ISORT is a function that is already defined on venus and euclid; if L is any list of real numbers then (ISORT L) is a list consisting of the elements of L in ascending order. Complete the following definition of a function MY-ISORT without making further calls of ISORT and without calling MY-ISORT recursively, in such a way that if L is any nonempty list of real numbers then (MY-ISORT L) is equal to (ISORT L).
;        (defun my-isort (L)
;           (let ((X (isort (cdr L))))
;              __________________________________ ))
; Hint: You should not have to call any function other than INSERT and CAR.


(defun isort (l)
	(if (null l)
			nil)
			(let ((x (isort (cdr l))))
				(insert (car l) x)))
	
							
       

			





