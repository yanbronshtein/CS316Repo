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
(defun partition (l p)
	(if (null l)
			nil
			(let ((x (partition (cdr l) p)))
				; if (car l)<p, prepend it to car list
				(cond ((< (car l) p)
								(list (cons (car l) (car x)) (cadr x)))
				; if (car l)>=p, prepend it to the cdr list
							(t (list (car x) (cons (car l) (cadr x))))))))

; Solution to Problem 8
; Without using MEMBER, complete the following definition of a recursive function POS such
; that if L is a list and E is an element of L then (POS E L) returns the position of the first
; occurrence of E in L, but if L is a list and E is not an element of L then (POS E L) returns 0. 
; (DEFUN POS (E L)
; (COND ((ENDP L)          ... )
;       ((EQUAL E (CAR L))
; ... )
; (T (LET ((X (POS E (CDR L))))
; ... ))))
; Examples: 
; (POS 5 '(1 2 5 3 5 5 1 5)) => 3 
; (POS 'A '(3 2 1)) => 0 
; (POS '(3 B) '(3 B)) => 0 
; (POS'(AB) '((K) (3RC) A (AB) (KLL) (AB))) =>4 
; (POS'(3B)'((3B)))=>1
(defun pos (e l)
	(cond ((endp l) 0)
				((equal e (car l)) 1)
				((t (let ((x (pos e (cdr l))))
						(+ x 1))))))


				




	; 





