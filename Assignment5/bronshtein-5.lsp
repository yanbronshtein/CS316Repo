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

(defun my-min-first (l)
  (let ((x (min-first (cdr l))))
    (cond ((null l) nil)
          ((<= (car l) (car x) l))
          ((t (cons (cons (car x) (car l) (cdr x))))))))