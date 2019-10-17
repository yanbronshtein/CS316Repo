
; What is actually happening here?
; The function recursively calls itself until the first set is empty, and then saves that to x
; After each pop off of the recursion stack, the following condition is checked:
; if the first element of s1 which at this point is the last element of the original s1,
; return x. Otherwise prepend this last value to x 
(defun set-union (s1 s2)
	(print "-start outside-")
	(print "i is:")
	(print i)
	(incf i)

	(print "s1")
	(print s1)
	(print "s2")
	(print s2)
	(print "-end outside-")
	(cond ((null s1) s2)
				
				(t (let ((x (set-union (cdr s1) s2)))
						(print "-start x-")
						(print "i:")
						(print i)
						(print "x is:")
						(print x)
						(print "s1")
						(print s1)
						(print "s2")
						(print s2)
						(print "-end x-")



						(cond ((member (car s1) x) x)
									(t (cons (car s1) x)))))))