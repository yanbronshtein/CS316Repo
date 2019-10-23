;Problem 1
(defun my-index (n l)
  (let ((x (index (- n 1) (cdr l))))
    (cond ((= n 1) (car l))
          (t x))))


(defun index (n l)
  (cond ((null l) 'ERROR)
        ((< n 1) 'ERROR)
        ((> (list-length l) n) 'ERROR))

  (let ((x (index (- n 1) (cdr l))))
    (cond ((= n 1) (car l))
          (t x))))
