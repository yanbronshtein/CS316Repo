;Problem 1
; (defun my-index (n l)
;   (let ((x (index (- n 1) (cdr l))))
;     (cond ((= n 1) (car l))
;           (t x))))


(defun index (n l)
  (cond ((null l) 'ERR)
        ((< n 1) 'ERR)
        ;; ((> (list-length l) n) 'ERR)
        (t (let ((x (index (- n 1) (cdr l))))
            (cond ((= n 1) (car l))
                  (t x))))))
; Problem 2




;; (defun my-min-first (l)
;;   (let ((x (min-first (cdr l))))
;;     (cond ((> (car l) (car x))
;;             (cons (car x) (cons (car l) (cdr x))))
;;             (t l))))

(defun min-first (l)
  (cond ((equal (cadr l) nil) l)
        (t (let ((x (min-first (cdr l))))
          (cond ((> (car l) (car x))
            (cons (car x) (cons (car l) (cdr x))))
            (t l))))))



;; (defun my-ssort (l)
;;   (let* ((l1 (min-first l))
;;          (x (ssort (cdr l1))))
;;          (cons (car l1) x)))



(defun ssort (l)
  (cond ((null l) nil)
        ((equal (cadr l) nil) l)
        (t (let* ((l1 (min-first l))
             (x (ssort (cdr l1))))
             (cons (car l1) x)))))
  

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


(defun qsort (l)
  (if (endp l)
      nil
      (let* ((pl (partition (cdr l) (car l)))
            (left-part (qsort (car pl)))
            (right-part (qsort (cadr pl))))
            (append left-part (cons (car l) right)))))



;; (defun qsort (L)
;;    (cond ((endp L) nil)
;;          (t (let ((P1 (partition L (car L))))
;;                  (cond ((endp (first P1)) (cons (first L)(qsort (rest L))))
;;                         (t (let ((x (qsort (first P1)))
;;                                  (y (qsort (second P1))))
;;                              (append x y))))))))