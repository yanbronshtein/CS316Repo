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


; Define a recursive function SET-UNION such that if s1 and s2 are sets then (SET-UNION s1 s2) is a set 
; that contains the elements of s1 and the elements of s2, but no other elements. 
; Thus (SET-UNION '(A B C D) '(C E F)) should return a list consisting of the 
; atoms A, B, C, D, E, and F (in any order) in which no atom occurs more than once.

; Solution to Problem 10



; Original
(defun set-union (s1 s2)
   (if (endp s1)
       s2
       (let ((x (set-union (cdr s1) s2)))
          (if (member (car s1) x)
              x
              (cons (car s1) x)))))

 


 ; (defun set-union (s1 s2)
 ;   (if (endp s1)
 ;       s2
 ;       (let ((x (set-union (cdr s1) s2)))
 ;          (if (member (car s1) x)
 ;              x
 ;              (cons (car s1) x)))))



; MINE!!!!
; (defun set-union (s1 s2)
; 	(cond ((and (null s1) (null s2)) nil)
; 				((null s1) s2)
; 				((null s2) s1)
; 				(t (let ((x (set-union s1 (cdr s2))))
; 						(cond ((member (car s2) x) x)
; 								(t (cons (car s2) x)))))))














