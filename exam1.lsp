; Problem 1: Suppose a Lisp variable x has been given a value as follows.
(print "Problem 1 Start")
(setf x '(88 ((11 21 31 41)) (90 91 92 93)))

(print (cons (caaadr x) (list (caadr x) (cons (car x) (caddr x)))))


; Problem 2: Define a Common Lisp function member-2 such that if K is a symbol and X is a 
; list then (member-2 k x)  returns T if the symbol is an element of the list, and returns NIL if the symbol 
; is not an element of the list

(print "Problem 2 Start")
; (print (member '((11 21 31 41) (90 91 92 93)) x)) ; Member returns the sublist starting with the element

; (defun member-2 (k x)
; 	(cond ((null x) NIL)
; 				((member k x) T)))



(setf x '(A B C D))

(defun member-2 (k x)
	(cond ((null x) NIL)
				((equal k (car x)) T)
				(t (member-2 k (cdr x)))))

(print (member-2 'A x))


; Problem 3: Complete the following definition of a Lisp function MONTH->INTEGER which takes as argument 
; a symbol that should be the name of a month, and which returns the number of the month.
; If the argument is not a symbol, or if it is a symbol that is not the name of a month, then your 
; function must return the symbol ERR 

(print "Problem 3 Start")

(defun month->integer (m)
	(cond ((not (symbolp m)) 'ERR)
				((equal m 'January) 1)
				((equal m 'February) 2)
				((equal m 'March) 3)
				((equal m 'April) 4)
				((equal m 'May) 5)
				((equal m 'June) 6)
				((equal m 'July) 7)
				((equal m 'August) 8)
				((equal m 'September) 9)
				((equal m 'October) 10)
				((equal m 'November) 11)
				((equal m 'December) 12)
				(t 'ERR)))

(print (month->integer 'Dogly))




	
