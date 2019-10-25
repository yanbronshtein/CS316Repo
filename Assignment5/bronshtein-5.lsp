;Solution to Problem 1
(defun index (n l)
  (cond ((null l) 'ERR)
        ((< n 1) 'ERR)
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
				(t (cons (car l2) (merge-lists (cdr l2) l1)))))


; Solution to Problem 6
(defun msort (l)
  (cond ((null l) nil)
        ((null (cdr l)) l)
        (t (let* ((sl (split-list l))
                  (left-part (msort (car sl)))
                  (right-part (msort (cadr sl))))
                 (merge-lists left-part right-part)))))

(defun split-list (l)
	(if (null l)
			'(nil nil)
			(let ((x (split-list (cdr l))))
				    (list (cons (car l) (cadr x)) (car x)))))


; Solution to Problem 7
(defun remove-adj-dupl (l)
  (if (null l)
       l
      (let ((X (remove-adj-dupl (cdr l))))
           (cond ((null x) (cons (car l) x))
                 ((equal (car l) (car x)) x)
                 (T (cons (car l) x))))))


; Solution to Problem 8
(defun unrepeated-elts (l)
   (cond ((null l)    nil)
         ((or (null  (cdr l))  (not (equal (car l) (cadr l))))
                     (cons (car l) (unrepeated-elts (cdr l))))
         ((or (null  (cddr l)) (not (equal (car l) (caddr l))))
                     (unrepeated-elts (cddr l)))
         (t          (unrepeated-elts (cdr l)))))


; Solution to Problem 9
(defun repeated-elts (l)
  (cond ((null l)    nil)
       ((or (null (cdr l))  (not (equal (car l) (cadr l))))
                    (repeated-elts (cdr L)))
       ((or (null (cddr l)) (not (equal (car l) (caddr l))))
                    (cons (car l) (repeated-elts (cddr L))))
       (t           (repeated-elts (cdr l)))))


; Solution to Problem 10
(defun count-repetitions (l)
  (if   (null l)
         nil
        (let ((x  (count-repetitions (cdr l))))
              (if (or  (endp (cdr l)) (not (equal (car l) (cadr l))))
                       (cons (list 1 (car L)) x)
                       (cons (list (+ 1 (caar x)) (car l)) (cdr x))))))

; Solution to Problem 11
(defun subset (f l)
  (cond ((endp l) nil)
        ((funcall f (car l))  (cons (car l) (subset f (cdr l))))
        (t (subset f (cdr l)))))

; Solution to Problem 12
(defun our-some (f l)
  (cond ((null l) nil)
        ((funcall f (car L))   L)
        (T (our-some f (cdr l)))))

(defun our-every (f l)
  (cond ((null l) t)
        ((funcall f (car l)) (our-every f (cdr L)))
        (t nil)))

;; ; Solution to Problem 13
;; (defun partition1 (l p predicate)
;;   (if  (null l)
;;        (list nil nil)
;;        (let ((x (partition1 (cdr l) P predicate)))
;;                 (if (funcall predicate (car l) p)
;;                     (list (cons (car l) (car x)) (cadr x))
;;                     (list (car x) (cons (car l) (cadr x)))))))

;; (defun qsort1 (p l)
;;   (if (endp l)
;;        nil
;;       (let* ((pl     (partition1 (cdr l) (car l) p))
;;              (left   (qsort1 p (car  pl)))
;;              (right  (qsort1 p (cadr pl))))
;;              (append left (cons (car l) right)))))

;; ; Solution to Problem 14
;; (defun appliedIth (f i l)
;;   (cond   ((null l)     nil)
;;           ((<= i 0)     nil)
;;           ((=  i 1)    (cons  (funcall f (car l)) (cdr l)))
;;           (t           (cons  (car l) (appliedIth f (- i 1) (cdr l))))))

;; (defun foohelper (f i l length)
;;   (cond ((endp l)       nil)
;;         ((> i length)   nil)
;;         (t             (cons (appliedIth f i l) (foohelper f (+ i 1) l length)))))

;; (defun foo (f l)
;;   (foohelper f 1 l (length l)))

;; ; Solution to Problem 15
;; (defun tr-add (l acc)
;;   (if (null l)
;;        acc
;;       (tr-add (cdr l) (+ acc (car l)))))

;; (defun tr-mul (l acc)
;;   (if (null l)
;;        acc
;;       (tr-mul (cdr l) (* acc (car l)))))

;; (defun tr-fac (num acc)
;;   (if (= 1 num)
;;        acc
;;       (tr-fac (- num 1) (* acc num))))

;; (defun slow-primep (n)
;;   (if (<= n 1)
;;        nil
;;       (= (- n 1) (mod (tr-fac (- n 1) 1) n))))

;; ; Solution to Problem 16
;; (defun transpose1 (m)
;;   (cond ((null m)         nil)
;;         ((null (cdr m))  (mapcar #'list   (car m)))
;;         (T               (mapcar #'cons   (car m) (transpose1 (cdr m))))))

;; (defun transpose2 (m)
;;   (cond ((null (car  m))    NIL)
;;         ((null (cdar m))   (cons (mapcar #'car m) nil))
;;         (T                 (cons (mapcar #'car m) (transpose2 (mapcar #'cdr m))))))
;; (defun transpose3 (m)
;;   (apply #'mapcar #'list m))


          















				       




