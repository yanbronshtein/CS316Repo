;;;; THIS FILE CAN BE VIEWED ON euclid USING: less ‐x2 bronshtein‐4.lsp

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
(defun pos (e l)
	(cond ((endp l) 0)
				((equal e (car l)) 1)
				(t (let ((x (pos e (cdr l))))
						(+ x 1)))))

; Solution to Problem 9
 ; Define a recursive function SPLIT-NUMS such that if N is a non-negative integer then
 ; (SPLIT-NUMS N) returns a list of two lists: The first of the two lists consists of the even
 ; integers between 0 and N in descending order, and the other list consists of the odd integers
 ; between 0 and N in descending order. Examples: (SPLIT-NUMS 0) => ((0) NIL)
 ; (SPLIT-NUMS 7) => ((6 4 2 0) (7 5 3 1)) (SPLIT-NUMS 8) => ((8 6 4 2 0) (7 5 3 1))
; (defun split-nums (N)
;    (if (zerop N)
;        (list (list N) nil)
;        (let ((x (split-nums (- N 1))))
; 	  (if (evenp N)
; 	      (list (cons N (car x)) (cadr x))
; 	      (list (car x) (cons N (cadr x)))))))


; (defun split-nums (n)
;   (if (zerop n)
;       (list (list n) nil)
;       (let ((x (split-nums (- n 1))))
; 	  		(if (evenp n)
; 	      		(list (cons n (car x)) (cadr x))
; 	      		(list (car x) (cons n (cadr x)))))))



; (defun split-nums (n)
; 	(cond ((zerop n)
; 					(list '(0) nil))
; 				(t (let ((x (split-nums (- n 1))))
; 					(print "n")
; 					(print n)
					
; 					(print "car x")
; 					(print (car x))

; 					(print "cadr x")
; 					(print (cadr x))


; 						(cond ((evenp n)
; 										(list (cons n (car x)) (cadr x)))
; 									(t 
; 										(list (car x) (cons n (cadr x)))))))))












(defun split-nums (n)
	(cond ((zerop n) (list '(0) nil))
				(t (let ((x (split-nums (- n 1))))
						(cond ((evenp n)
										(list (cons n (car x)) (cadr x)))
									(t
										(list (car x) (cons n (cadr x)))))))))










; (defun split-nums (n)
; 	(cond ((zerop n)
; 					(list '(0) nil))
; 				(t (let ((x (split-nums (- n 1))))
; 					(print "n")
; 					(print n)
					
; 					(print "car x")
; 					(print (car x))

; 					(print "cadr x")
; 					(print (cadr x))


; 						(cond ((evenp n)
; 										(list (cons n (car x)) (cadr x)))
; 									(t 
; 										(list (car x) (cons n (cadr x)))))))))






