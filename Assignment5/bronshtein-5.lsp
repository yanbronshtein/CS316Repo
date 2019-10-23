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
