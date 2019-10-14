; Solution to Problem 1


; A. SUM is a function that is already defined on venus and euclid; if L is any list of numbers then
;  (SUM L) returns the sum of the elements of L. [Thus (SUM ( )) returns 0.] Complete the
;  following definition of a function MY-SUM without making further calls of SUM and without
;  calling MY-SUM recursively, in such a way that if L is any nonempty list of numbers then
;  (MY-SUM L) is equal to (SUM L).
;  (defun my-sum (L)
;  (let ((X (sum (cdr L))))
;  __________________________________ ))
(defun sum (l)
	(if (null l)
			nil
			(let ((x (sum (cdr l))))
				(+ x (car l)))))
