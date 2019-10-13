; Section 1:
; The 7 problems in this section (A – G) do not carry direct credit, but are intended to help you solve
; problems 1 – 7 in Section 2. There may be exam questions of a similar nature to A – G.
; Your solutions to problems A – G must not be recursive. You can test your solutions to
; these problems on venus† or euclid: Functions SUM, NEG-NUMS, INC-LIST-2, INSERT, ISORT,
; SPLIT-LIST, and PARTITION with the properties stated in A – G are predefined when you start
; clisp using cl on venus† or euclid. When a function has 2 cases, test your code in both cases!

; A. SUM is a function that is already defined on venus and euclid; if L is any list of numbers then
;  (SUM L) returns the sum of the elements of L. [Thus (SUM ( )) returns 0.] Complete the
;  following definition of a function MY-SUM without making further calls of SUM and without
;  calling MY-SUM recursively, in such a way that if L is any nonempty list of numbers then
;  (MY-SUM L) is equal to (SUM L).
;  (defun my-sum (L)
;  (let ((X (sum (cdr L))))
;  __________________________________ ))




(defun my-sum (L)
   (let ((x (sum (cdr L))))
      (+ x (car L))))



; B. NEG-NUMS is a function that is already defined on venus and euclid; if L is any list of real
;  numbers then (NEG-NUMS L) returns a new list that consists of the negative elements of L. For
;  example: (NEG-NUMS '(–1 0 –8 2 0 8 –1 –8 2 8 4 –3 0) ) => (–1 –8 –1 –8 –3).
;  Complete the following definition of a function MY-NEG-NUMS without making further calls
;  of NEG-NUMS and without calling MY-NEG-NUMS recursively, in such a way that if L is
;  any nonempty list of numbers then (MY-NEG-NUMS L) is equal to (NEG-NUMS L).
;  (defun my-neg-nums (L)
;  (let ((X (neg-nums (cdr L))))
;  ______________________________________
;  ____________ ))
;  There are two cases: (car L) may or may not be negative.

(defun my-neg-nums (L)
	(let ((x (neg-nums (cdr L)))))
		(cond ((minusp (car L)) (cons (car L) X))
                (t x)))
					 
	
			
		
(let ((zebra "stripes")
           (tiger "fierce"))
       (message "One kind of animal has %s and another is %s."
                zebra tiger))


(print "Created my first bash script")
(print "Hello from the other side")
	
