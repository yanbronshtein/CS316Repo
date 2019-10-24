;Problem 1
; (defun my-index (n l)
;   (let ((x (index (- n 1) (cdr l))))
;     (cond ((= n 1) (car l))
;           (t x))))


(defun index (n l)
  (cond ((null l) 'ERR)
        ((< n 1) 'ERR)
        ((> (list-length l) n) 'ERR)
        (t (let ((x (index (- n 1) (cdr l))))
            (cond ((= n 1) (car l))
                  (t x))))))
; Problem 2

;; (defun my-min-first (l)
;;   (let ((x (min-first (cdr l))))
;;     (cond ((null l) nil)
;;           ((<= (car l) (car x) l))
;;           ((t (cons (cons (car x) (car l) (cdr x)))))))))


(defun my-min-first (l)
  (let ((x (min-first (cdr l))))
    (cond ((> (car l) (car x))
            (cons (car x) (cons (car l) (cdr x))))
            (t l))))
  
;; (defun min-first (L)
  ;;  (if (listp L)
  ;;      (if (equal (cadr L) NIL) 
  ;;          L
  ;;          (let ((X (min-first (cdr L))))
  ;;          (if (> (car L) (car X))
  ;;              (cons (car X) (cons (car L) (cdr X)))
  ;;              L)))))