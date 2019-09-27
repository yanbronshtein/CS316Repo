; Lisp Assignment 3 Yaniv Bronshtein


; Problem 1:
; Define a LISP function MIN-2 with the following properties. MIN-2 takes two arguments, A and B. 
; If the arguments A and B are numbers such that A ≤ B, then MIN-2 returns A. If A and B are 
; numbers such that A > B, then MIN-2 returns B. If A or B is not a number, then MIN-2 returns the symbol ERROR.
; Examples: (MIN-2 21.3 7/2) => 7/2 (MIN-2 17.5 29) => 17.5 
; (MIN-2 5 'APPLE) => ERROR (MIN-2 '(31) '(54)) => ERROR

; Solution to Problem 1
	(print "Problem 1 Start")

	(defun min-2 (a b)
		(if (<= a b) a b))

	(print (min-2 4.0 1/2))


; Problem 2: 
; [Exercise 4 on p. 72 of Wilensky] Write a LISP function SAFE-AVG that takes 2 arguments
; and returns the average of those arguments if they are numbers. If one or both of the arguments
; is not a number, the function should return NIL. Examples: (SAFE-AVG 23 47.4) => 35.2 
; (SAFE-AVG 3 8) => 11/2
; (SAFE-AVG '(23.1) 47.3) => NIL (SAFE-AVG 'ORANGE 'PLUM) => NIL

; Solution to Problem 2

	(print "Problem 2 Start")

	(defun safe-avg (a b)
		(if (and (numberp a) (numberp b))
			(/ (+ a b) 2)
			nil))

    (print (safe-avg 2.0 3))
       

; Problem 3:
; Write a LISP predicate ODD-GT-MILLION that takes one argument, and which returns T if its argument is an odd 
; integer greater than a million, but returns NIL otherwise. Hint: Make use of the predicate INTEGERP. 
; Examples:
; (ODD-GT-MILLION 92010231) => T (ODD-GT-MILLION 17) => NIL (ODD-GT-MILLION 92010232) => NIL 
; (ODD-GT-MILLION 21/5) => NIL (ODD-GT-MILLION 1718671.24) => NIL
; (ODD-GT-MILLION '(2010231)) => NIL (ODD-GT-MILLION 'APPLE) => NIL

	(print "Problem 3 Start")

	(defun odd-gt-million (num)
		(if (and (integerp num) 
			(> num 1000000))
			T
			nil))

	(print (odd-gt-million 9999999))


; Problem 4:
; Re-read the discussion of MEMBER in sec. 6.6 of Touretzky or on p. 51 of Winston & Horn. 
; Then write a LISP predicate MULTIPLE-MEMBER that takes two arguments and behaves as follows: 
; If the first argument is a symbol or number and the second is a list, then MULTIPLE-MEMBER 
; returns a true value if the first argument occurs at least twice in the second argument, 
; and returns NIL otherwise.
; Examples: (MULTIPLE-MEMBER 'A '(B A B B A C A D)) => (A C A D) 
; (MULTIPLE-MEMBER 'A '(B A B B C C A D)) => (A D) (MULTIPLE-MEMBER 'A '(B A B B C D)) => NIL
; [Notice that the behavior of MULTIPLE-MEMBER is unspecified in cases where the first argument 
; is not a symbol or number, and in cases where the second argument is not a list. 
; In other words, your definition may return any value or produce an evaluation error in such cases.]

	(print "Problem 4 Start")

	(defun multiple-member (a b)
  	(if (and (or (symbolp a)
			           (numberp a))
			       (listp b))
	  	(if (member a (cdr (member a b)))
	  		T
	  		nil)))
	(print (multiple-member 'A '(B A B B C D)))


; Problem 5:
; Define a LISP function MONTH->INTEGER which takes as argument a symbol that should
; be the name of a month, and which returns the number of the month. 
; For example, (MONTH->INTEGER 'MARCH) => 3 and (MONTH->INTEGER 'JUNE) => 6. 
; If the argument is not a symbol that is the name of a month, the function 
; should return the symbol ERROR. E.g., (MONTH->INTEGER 'C) => ERROR, 
; (MONTH->INTEGER 7) => ERROR, (MONTH->INTEGER 'QUOTE) => ERROR, and 
; (MONTH->INTEGER '(MAY)) => ERROR.


	(print "Problem 5 Start")

	(defun month->integer (str)
		(if (equal str 'January)
			1
			(if (equal str 'February)
				2
			(if (equal str 'March)
				3
			(if (equal str 'April)
				4
			(if (equal str 'May)
				5
			(if (equal str 'June)
				6
			(if (equal str 'July)
				7
			(if (equal str 'August)
				8
			(if (equal str 'September)
				9
			(if (equal str 'October)
				10
			(if (equal str 'November)
				11
			(if (equal str 'December)
				12
				'error)))))))))))))

		(print (MONTH->INTEGER 'MARCH))

; Problem 6:
; Define a LISP function SCORE->GRADE which takes a single argument, s, and returns a
; symbol according to the following scheme: s ≥ 90 A
; 87 ≤ s < 90 A– 
; 83 ≤ s < 87 B+ 
; 80 ≤ s < 83 B 
; 77 ≤ s < 80 B–
; 73 ≤ s < 77 C+ 
; 70 ≤ s < 73 C 
; 60 ≤ s < 70 D
; s < 60
; If the argument s is not a number then the function should return NIL.
; Examples: (SCORE->GRADE 86.3) => B+ (SCORE->GRADE 59.9) => F
; (SCORE->GRADE 106) => A (SCORE->GRADE –10.1) => F (SCORE->GRADE 83) => B+ (SCORE->GRADE 74) => C+
; (SCORE->GRADE 87.0) => A–


	(print "Problem 6 Start")

	; (defun score->grade (s)
	; 	(cond ((numberp s) 666)))


	(defun score->grade (s)
		(if (numberp s) 
				(cond ((>= s 90) 'A) 
							((and (>= s 87) (< s 90)) 'A-)
							((and (>= s 83) (< s 98)) 'B+)
							((and (>= s 80) (< s 83)) 'B)
							((and (>= s 77) (< s 80)) 'B-)
							((and (>= s 73) (< s 77)) 'C+)
							((and (>= s 70) (< s 73)) 'C)
							((and (>= s 60) (< s 70)) 'D)
							((< s 60) 'F))
				nil))


	(print (score->grade 'y))

	; Problem 7:
	; Define a LISP function GT with the following properties. GT takes two arguments. 
	; It returns T if both arguments are numbers and the first argument is strictly greater than the second. 
	; In all other cases GT returns NIL.

	(print "Problem 7 Start")

	(defun gt (a b)
		(and (numberp a) (numberp b) (> a b)))

	(print (gt 5 4))


; Problem 8:
; Define a LISP function SAME-PARITY with the following properties. SAME-PARITY takes two arguments. 
; It returns T if both arguments are even integers or if both arguments are odd
; integers. In all other cases SAME-PARITY returns NIL.
; Examples: (SAME-PARITY 0 –1) => NIL (SAME-PARITY –3 –9) => T (SAME-PARITY 30 90) => T
; (SAME-PARITY 'A 'A) => NIL (SAME-PARITY 4.1 3.7) => NIL

	(print "Problem 8 Start")
	(defun same-parity (a b) 
		(and (integerp a) (integerp b) (or (and (evenp a) (evenp b)) (and (oddp a) (oddp b)))))

	(print (same-parity -4 -6))


; Problem 9: 
; Define a LISP function SAFE-DIV with the following properties. SAFE-DIV takes two arguments. 
; If both arguments are numbers and the second does not satisfy ZEROP, then the function returns the result 
; of dividing the first argument by the second. In all other cases it returns NIL. 
; Examples: (SAFE-DIV 6 4) => 3/2 (SAFE-DIV 6.0 4) => 1.5 (SAFE-DIV 6 0) => NIL
; (SAFE-DIV 6 0.0) => NIL (SAFE-DIV '(6) 4) => NIL (SAFE-DIV 6 T) => NIL


	(print "Problem 9 Start")

	(defun safe-div (a b)
				(and (numberp a) (numberp b) (not (zerop b))) (/ a b))

	(print (safe-div 4.0 5))









