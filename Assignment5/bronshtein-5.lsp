;Problem 1
(defun my-index (n l)
  (let ((x (index (- n 1) (cdr l))))
    (cond ((= n 1) car l))))
