;Solution to Problem 1
(defun index (n l)
  (cond ((null l) 'ERR)
        ((< n 1) 'ERR)
        ;; ((> (list-length l) n) 'ERR)
        (t (let ((x (index (- n 1) (cdr l))))
            (cond ((= n 1) (car l))
                  (t x))))))

; Solution to Problem 2
(defun min-first (l)
  (cond ((equal (cadr l) nil) l)
        (t (let ((x (min-first (cdr l))))
          (cond ((> (car l) (car x))
            (cons (car x) (cons (car l) (cdr x))))
            (t l))))))

; Solution to Problem 3
(defun ssort (l)
  (cond ((null l) nil)
        ((equal (cadr l) nil) l)
        (t (let* ((l1 (min-first l))
             (x (ssort (cdr l1))))
             (cons (car l1) x)))))
  

; Solution to Problem 4
(defun partition (l p)
	(if (null l)
			nil
			(let ((x (partition (cdr l) p)))
				; if (car l)<p, prepend it to car list
				(cond ((< (car l) p)
								(list (cons (car l) (car x)) (cadr x)))
				; if (car l)>=p, prepend it to the cdr list
							(t (list (car x) (cons (car l) (cadr x))))))))

(defun qsort (l)
  (if (endp l)
      nil
      (let* ((pl (partition (cdr l) (car l)))
            (left-part (qsort (car pl)))
            (right-part (qsort (cadr pl))))
            (append left-part (cons (car l) right-part)))))

; Solution to Problem 5
(defun merge-lists (L1 L2)
  (cond ((endp L1) L2)
	      ((endp L2) L1)
	      ((< (car L1) (car L2)) 
          (cons (car l1) (merge-lists (cdr l1) l2)))
				(t (cons (car l2) (merge-lists (cdr l2) l2)))))
				       




