; Solution to Problem 1
	(defun min-2 (a b)
		(if (<= a b) a b))

; Solution to Problem 2
	(defun safe-avg (a b)
		(if (and (numberp a) (numberp b))
			(/ (+ a b) 2)
			nil))

       

; Problem 3:
	(defun odd-gt-million (num)
		(if (and (integerp num) 
			(> num 1000000))
			T
			nil))



; Solution to Problem 4
	(defun multiple-member (a b)
  	(if (and (or (symbolp a) (numberp a))
			       (listp b))
	  	(if (member a (cdr (member a b)))
	  		T
	  		nil)))


; Solution to Problem 5
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

; Solution to Problem 6
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

	; Solution to Problem 7
	(defun gt (a b)
		(and (numberp a) (numberp b) (> a b)))

; Solution to Problem 8
	(defun same-parity (a b) 
		(and (integerp a) (integerp b) (or (and (evenp a) (evenp b)) (and (oddp a) (oddp b)))))

; Solution to Problem 9: 
	(defun safe-div (a b)
				(and (numberp a) (numberp b) (not (zerop b))) (/ a b))
