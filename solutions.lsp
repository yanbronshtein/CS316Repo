#|| 
Problem 1:
	a). Can an atom be a variable?
	-An atom is a number or string of contiguous characters. 
	It includes numbers and special characters.
	-Variables (or atoms as they are called in Lisp) are evaluated as 
	their value if they are defined, or generate an error if they are undefined
	(YES)
	
	b). Can a number be a variable?
	A number cannot be a variable
	(NO)

	c).Can a list be a variable?
	-A list is a sequence of atoms and/or other lists enclosed in parentheses.
	(NO)

	d). Can an atom have no value?
	-An atom can be of type void.
	(YES)

	e). Can an atom have more than one value at the same time?
	-By definition, an atom is "indivisible". Thus it can only have one value at a time
	(NO)

	f). Can a variable have itself as a value?
	-e.g (defvar x "boy")
		(setq x x)
		>"boy"
	(YES)

	g). Can a list (A B C) be the value of two different variables?
	-If the two variables are pointers to the same list then I assume so
	(YES)

||#

#||
Problem 2: Each of the following may be a single atom, a single list, or neither. 
Identify each accordingly. 
For the lists, also say how many elements the list has. 
[You are not asked to evaluate any expression -e.g (+ 1 9) would be a list of 3 elements,
even though this list would evaluate to a numeric atom(i.e 10).]

	a). ATOMS
	Single atom

	b). (THIS IS AN ATOM)
	A single list with 4 elements

	c). ) (
	Neither

	d). ((A B) (C D)) 3 (3)
	Neither

	e). ( () () )
	Single list with two elements. Both of them are nil

	f). ((A B C
	Neither

	g). (/ (+ 3 1) (- 3 1))
	Single list with 3 elements

	h). (LIST 3)
	Single list with 2 elements
||#



#|| BEGIN: THIS IS MY REVIEW 
(setf funkyList '((MY MOMMA SAID) APPLES (TASTE GOOD)))

(print funkyList)
(print (length funkyList))

(print (rest funkyList))
(print "Printing CAR!")
(print (car funkyList)) ;;Car actually returns pointer to first element in list. Same as first
(print "Printing CDR!")
(print (cdr funkyList)) ;;CDR actually returns a pointer to the rest of the list. Same as rest

(setf consifiedFunkyList (cons '(YO) funkyList))
(print "Printing result of CONS!") ;;cons prepends the first argument to the func to the second argument lsit

(print consifiedFunkyList)

(setf coolList (cons '(I LIKE LISTS) nil))


(print "Printing coolList!") 

(print coolList) 

; List predicates

(print "How does LISTP work???")
(print (listp 45678))
(print (listp '(45678)))
(print (listp '()))

(print "How does CONSP work???")
(print (consp 45678))
(print (consp '(45678)))
(print (consp '())) ;;The two functions are almost the same. The main difference is in the fact that NIL is a list but it is not a cons cell

END: THIS IS MY REVIEW||#

; Problem 3: [Exercise 4 on p. 37 of Wilensky] Use SETF to assign X the value (A B C), 
; and then use X to produce the list (A B C A B C)

(print "Problem 3 Start")
(setf x '(a b c))
(print (append x x))



; Problem 4  [Exercise 5 on p. 37 of Wilensky] Write the expression 
; ' ' (A) using QUOTE rather than '. 
; What is the data type of the expression 'A?
(print "Problem 4 Start")
(quote (quote A))
(print "Printing type of 'A")
(print (type-of 'A)) ;; 'a = (quote a) is a list of two symbols that evaluates to the symbol A


; Problem 5: 
	; a). Use SETF to give Y the value (A B). 
	; But, instead of writing '(A B), you must use a Lisp function call to create the 
	;list (A B).
	(print "Problem 5a Start")
	(setf y (list 'a 'b))
	(print y)
	; b). Write code that makes the list (D A). H
	; However, you must get A from the variable Y, which has the value (A B) 
	; from part (a).
	(print "Problem 5b Start")
	(print (list 'd (car y)))


; Problem 6: Define a function called SQR that returns a list of the perimeter and 
; the area of a square, 
; given the length of one side. Thus (SQR 2) should return (8 4).

	(print "Problem 6 Start")
	(defun sqr (side-len)
		(list (* side-len 4) (* side-len side-len)))
	(print "Calculating sqr(3)")

	(setf returnVal (sqr 3))
	(print returnVal)


; Problem 7: Define QUADRATIC, a function with three parameters A, B and C 
; that returns a list of the two roots of the equation Ax2 + Bx + C = 0. 
; You should use the built-in function SQRT. Recall that the two roots are given by:
	
	(print "Problem 7 Start")
	(defun quadratic (a b c)
		(setq discriminant (sqrt (- (* b b) (* 4 a c))))
		(setq denom (* 2 a))
		(setq root1 (/ (+ (- b) discriminant) denom))
		(setq root2 (/ (- (- b) discriminant) denom))
		(list root1 root2)
	)


	(defun quadratic-second-version (a b c)
		; (setq discriminant (sqrt (- (* b b) (* 4 a c))))
		; (setq denom (* 2 a))
		; (setq root1 (/ (+ (- b) discriminant) denom))
		; (setq root2 (/ (- (- b) discriminant) denom))
		(list 
			(/ 
				(+ 
					(- b) 
					(sqrt (- (* b b) (* 4 a c)))) 
				(* 2 a)
			) 
			(/ 
				(- 
					(- b) 
					(sqrt (- (* b b) (* 4 a c)))
				) 
				(* 2 a)
			)
		)
	)
		
	(print (quadratic-second-version 1 5 6))
		; (print "Discriminant is:")
		; (print discriminant)
		


; Problem 8: [Exercise 1 on p. 52 of Wilensky] 
; Write a Lisp function that computes the area of a circle given its radius. 
; Use the predefined constant PI.

	(print "Problem 8 Start")

	(defun area-of-circle (r)
		(* pi (* r r))
	)
	(print (area-of-circle 3))

; Problem 9: Define a function called FTOC 
; which takes as its argument a degree reading in Fahrenheit and 
; returns its Celsius equivalent. (The Celsius equivalent of a Fahrenheit 
; temperature is obtained by subtracting 32 and multiplying by 5/9.)

	(print "Problem 9 Start")

	(defun ftoc (degF) 
		(* (- degF 32) (/ 5 9))
	)
	
	(print (ftoc 32))


; Problem 10: Define a function ROTATE-LEFT which takes a list as argument and 
; returns a new list in which the former first element has become the last element. 
; Thus (ROTATE-LEFT '(A B C D)) should return (B C D A).

	(print "Problem 10 Start")

	(defun rotate-left (l)
		(append (cdr l) (list (car l))) 
	)

	(print (rotate-left '(A B C D)))

; Problem 11: 
;[Exercise 4 on pp. 52 – 3 of Wilensky] A point (x, y) in the plane can be 
; represented as a two-element list (x y). 
; Write a Lisp function that takes two such lists as arguments and returns the 
; distance between the corresponding points. 
; Recall that the distance between two points (x1, y1) and (x2, y2) is given by
; (x_1 −x_2)^2 + (y_1 − y_2)^2.

	(print "Problem 11 Start")

	(defun distance-between-points (l1 l2)
		(+
			(expt (- (first l1) (first l2)) 2)
			(expt (- (second l1) (second l2)) 2)
		)
	)

	(print (distance-between-points '(0 0) '(0 1)))


; Problem 12: [Exercise 5 on pp. 52 – 3 of Wilensky] 
; Define Lisp functions HEAD and TAIL that behave just like CAR and CDR, respectively.

	(print "Problem 12 Start")

	(defun head (sampleList)
		(first sampleList))

	(defun tail (sampleList)
		(rest sampleList))

; Problem 13: Define a Lisp function SWITCH that takes as its argument a two-element list and returns a 
; list consisting of the same two elements, but in the opposite order. 
; Example: (switch '(A B)) => (B A).
	(print "Problem 13 Start")

	(defun switch (sampleList)
		(list (second sampleList) (first sampleList)))

	(setf returnedList (switch '(A B)))
	(print returnedList)


; Problem 14: Suppose you have just entered the following three Lisp expressions at successive
; Clisp > prompts (with no spaces before or after * and + in 8*7 and 8+7):
	(print "Problem 14 Start")

                       (setf 8*7 5) ;; Now is 5
                       (defun 8+7 (x y) (+ x y)) ;; Now is |8+7|
                       (defun 8*7 () 9) ;; Now is still just 8*7 
; If you now enter the expression (8+7 (* 8 7) (8+7 (8*7) 8*7)) what value will be printed by Clisp? 
; Check your answer using Clisp.
		
; Printed: 56+(9+5)=70

; Problem 15:

; [Exercise 1 on pp. 36 – 7 of Wilensky] For each of (a), (b), and (c) below, suppose SETF has just 
; been used to give the variable E the specified value.
;(E.g., for (a) we suppose (setf e '(a b x d)) has just been entered at Clisp's >prompt.) 
; In each case,write an expression that involves only E,car,and cdr, and which evaluates to the symbol X. 
; [Hint: For a specified value of (A X C), you would be expected to write the expression (car (cdr e)) 
; because the car of the cdr of (A X C)is X.]
	
	; a). 
	(print "Problem 15 a Start") 
	(setf e '(a b x d))
	(print (car (cdr (cdr e))))

	; b). 
	(print "Problem 15 b Start") 
	(setf e '(a (b (x d))))
	(print (car (car (cdr (car (cdr e))))))

	; c).
	(print "Problem 15 c Start") 
	(setf e '(((a (b (x) d)))))
	(print (car (car (cdr (car (cdr (car (car e))))))))


; Problem 16: 
; For each of the three lists in exercise 15, write an expression that involves only quoted symbols, 
; NIL, and calls of CONS,and which evaluates to that list. [Hint: For a list (A X C), you would be 
; expected to write the expression (cons 'a (cons 'x (cons 'c nil))).]
; Note: One way to solve such problems is to first write the list using calls of LIST, and then rewrite 
; the expression using appropriate calls of CONS. (Another approach is to do a preorder traversal of 
; the tree-representations of the given lists––read p. 393 in Sethi for more on the tree-representation 
; of an S-expression.)


	; a). (a b x d)
	(print "Problem 16a Start") 
	(print (cons 'a (cons 'b (cons 'x (cons 'd nil)))))

	; b). (a (b (x d)))
	(print "Problem 16b Start") 
	(print (cons 'a (cons (cons 'b (cons (cons 'x (cons 'd nil)) nil)) nil)))

	; c). (((a (b (x) d))))
	(print "Problem 16c Start") 
	(print (cons (cons (cons 'a (cons (cons 'b (cons (cons 'x nil) (cons 'd nil))) nil)) nil) 
		nil))

; Problem 17-20: 
	(print "Problem 17-20 Start") 
	(setf e
		'((90 91 92 93 94 95 96 97 98 99) (+ 3 4 –) (9 19 29 39 49 59 69 79 89 99)))
	(print e)

	; Problem 17:
	; Write an expression that does not involve any numbers, but which evaluates
	; to the list (((90 91) 92 93 94 95 96 97 98 99) (A B 29 39 49 59 69 79 89 99)).
	(print "Problem 17 start")
	(print (list (list (list (first (first e)) (second (first e))) 
		(rest (rest (first e)))) (car (list (cons 'a (cons 'b (rest (rest (third e)))))))))


	; Problem 18:
	; Write an expression that does not involve any numbers, but which evaluates to the list 
	; ((90 A 92 93 94 95 96 97 98 99) 3 29 (4 29 39 49 59 69 79 89 99)).

	(print "Problem 18 start")
	(print (list (cons (caar e) (cons 'a (cddar e))) (cadadr e) (third (caddr e)) 
		(cons (second (cdadr e)) (cddar e))))

	
	; Problem 19:
	; Write an expression that does not involve any numbers, but which evaluates 
	; to the list ((90 91 92 93 94 95 96 97 98 99 3) (+ 3 4 – 29 39 49 59 69 79 89 99)).

	(print "Problem 19 start")
	(print (list (append (car e) (list (cadadr e))) (append (second e) (cddar e)))) 


	; Problem 20:
	; Write an expression that does not involve any numbers, but which evaluates
	; to the list ((A 91 92 93 94 95 96 97 98 99) (90 (19 29) 39 49 59 69 79 89 99)).
	(print "Problem 20 start")
	; (print (list (cons 'a (cdar e)) (list (caar e) 
	; 	(list (second (third e)) (third (third e))) (cdddr (third e)))))

	 

	(print "Problem 20 test section")
	; (print (list (caar e) (list (second (third e)) (third (third e))) (cdddr (third e))))
	; (print (second (third e)) (third (third e))) (cdddr (third e))

	; (print (cdddr (third e)))
	; (print (list (caar e)))

	(print (list (cons 'a (cdar e)) (cons (caar e) 
		(list (second (third e)) (third (third e)) (cdddr (third e))))))



















	









