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
(defun split-nums (n)
	(cond ((zerop n) (list '(0) nil))
				(t (let ((x (split-nums (- n 1))))
						(cond ((evenp n)
										(list (cons n (car x)) (cadr x))) ;If n even, prepend to even list (car x)
									(t
										(list (car x) (cons n (cadr x))))))))) ;If n odd, prepend to odd list (cadr x)

; Solution to Problem 10
(defun set-union (s1 s2)
	(print "cdr s1:")
	(print (cdr s1))
	(print "car s1:")
	(print (car s1))
	(print " ")
	(cond ((null s1) s2)
				
				(t (let ((x (set-union (cdr s1) s2)))
						(print "x is:")
						(print x)


						(cond ((member (car s1) x) x)
									(t (cons (car s1) x)))))))

; Solution to Problem 11
; (defun set-remove (x s)
; 	(cond ((null s) nil)
; 				(t (let ((y (set-remove x (cdr s))))
; 						(cond ((equal (car s) x) y)
; 									(t (cons (car s) y)))))))


; Solution to Problem 12
; Define a recursive function SET-EXCL-UNION such that if s1 and s2 are sets then (SET-EXCL-UNION s1 s2) 
; is a set that contains all those atoms that are elements of exactly one of s1 and s2, but no other atoms. 
; (SET-EXCL-UNION s1 s2) does not contain any atoms that are neither in s1 nor in s2, and also does not 
; contain the atoms that are in both of s1 and s2. For example, (SET-EXCL-UNION '(A B C D) '(E C F G A)) 
; should return a list consisting of the atoms B, D, E, F, and G (in any order) in which no atom occurs 
; more than once.

; (defun set-exl-union (s1 s2)
; 	(cond ((null s1) s2)
; 				(t (let ((x (set-union (cdr s1) s2)))
; 						(cond ((member (car s1) x) 
; 										(set-remove (car s1) x))
; 									(t (cons () )) 
; 							)
		



; Solution to Problem 13

; Define a recursive function SINGLETONS such that if e is any list of numbers and/or symbols then 
; (SINGLETONS e) is a set that consists of all the atoms that occur just once in e.
; Examples: (SINGLETONS ( )) => NIL (SINGLETONS '(G A B C B)) => (G A C) 
; (SINGLETONS '(H G A B C B)) => (H G A C) (SINGLETONS '(A G A B C B)) => (G C) 
; (SINGLETONS '(B G A B C B)) => (G A C) [Hint: When e is nonempty, 
; consider the case in which (car e) is a member of (cdr e), and the case in which (car e) is 
; not a member of (cdr e).]















