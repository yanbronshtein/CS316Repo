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
















