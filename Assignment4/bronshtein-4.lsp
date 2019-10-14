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

(defun my-neg-nums (l)
	(let ((x (neg-nums (cdr l))))
		(cond ((minusp (car l)) 
					(cons (car l) x))
          (t x))))

			
	
			
; C. INC-LIST-2 is a function that is already defined on venus and euclid; if L is any list of numbers and
;  N is a number then (INC-LIST-2 L N) returns a list of the same length as L in which each element
;  is equal to (N + the corresponding element of L). For example,
;  (INC-LIST-2 ( ) 5) => NIL (INC-LIST-2 '(3 2.1 1 7.9) 5) => (8 7.1 6 12.9)
;  Complete the following definition of a function MY-INC-LIST-2 without making further calls
;  of INC-LIST-2 and without calling MY-INC-LIST-2 recursively, in such a way that if L is
;  any nonempty list of numbers and N is any number then (MY-INC-LIST-2 L N) is equal to
;  (INC-LIST-2 L N). 
; (defun my-inc-list-2 (L N)
;  (let ((X (inc-list-2 (cdr L) N)))
;  __________________________________ ))	
; 	




(defun my-inc-list-2 (l n)
	(let ((x (inc-list-2 (cdr l) n)))
		(cond ((null l) 
					nil)
          (t (cons (+ (car l) n) x)))))



; D. INSERT is a function that is already defined on venus and euclid; if N is any real number and L is
;  any list of real numbers in ascending order then (INSERT N L) returns a list of numbers in
;  ascending order obtained by inserting N in an appropriate position in L. Examples: (INSERT 8 ( )) => (8) (INSERT 4 '(0 0 1 2 4)) => (0 0 1 2 4 4) (INSERT 4 '(0 0 1 3 3 7 8 8)) => (0 0 1 3 3 4 7 8 8)
;  Complete the following definition of a function MY-INSERT without making further calls
;  of INSERT and without calling MY-INSERT recursively, in such a way that if N is any real
;  number and L is any nonempty list of real numbers in ascending order then (MY-INSERT N L)
;  is equal to (INSERT N L). 
; (defun my-insert (N L)
;  (let ((X (insert N (cdr L))))
;  __________________________________
;  __________________________________ ))
;  [There are two cases: N may or may not be ≤ (car L). In the former case you do not need to use X,
;  so if you move that case outside the LET the function will be more efficient.]




(defun my-insert (n l)
	(cond ((> (car l) n) (cons n l))) ; Prepend new element if it is less than first elem in list 
	(let ((x (insert n (cdr l))))
    (cond ((<= (car l) n) (cons (car l) x))))) ;Append


; E. ISORT is a function that is already defined on venus and euclid; if L is any list of real numbers
;  then (ISORT L) is a list consisting of the elements of L in ascending order. Complete the
;  following definition of a function MY-ISORT without making further calls of ISORT and
;  without calling MY-ISORT recursively, in such a way that if L is any nonempty list of real
;  numbers then (MY-ISORT L) is equal to (ISORT L).
;  (defun my-isort (L)
;  (let ((X (isort (cdr L))))
;  __________________________________ ))
;  Hint: You should not have to call any function other than INSERT and CAR.

(defun my-isort (l)
  (let ((x (isort (cdr l))))
    (insert (car l) x)))




; F. SPLIT-LIST is a function that is already defined on venus and euclid; if L is any list then
;  (SPLIT-LIST L) returns a list of two lists, in which the first list consists of the 1st, 3rd, 5th, ...
;  elements of L, and the second list consists of the 2nd, 4th, 6th, ... elements of L. Examples:
;  (SPLIT-LIST ( )) => (NIL NIL) (SPLIT-LIST '(A B C D 1 2 3 4 5)) => ((A C 1 3 5) (B D 2 4))
;  (SPLIT-LIST '(B C D 1 2 3 4 5)) => ((B D 2 4) (C 1 3 5)) (SPLIT-LIST '(A)) => ((A) NIL)
;  Complete the following definition of a function MY-SPLIT-LIST without making further calls of
;  SPLIT-LIST and without calling MY-SPLIT-LIST recursively, in such a way that if L is any
;  nonempty list then (MY-SPLIT-LIST L) is equal to (SPLIT-LIST L).
;  (defun my-split-list (L)
;  (let ((X (split-list (cdr L))))
;  __________________________________ ))


(defun my-split-list (l)
	(let ((x (split-list (cdr l))))
		(print (car x)) ;(2 4)
		(print (cdr l)) ;(2 3 4 5)
		(print (cadr x)) ;(3 5)
		(print (car l)) ;(1)

		(list (cons (car l) (cadr x)) (car x))))



; G. PARTITION is a function that is already defined on venus and euclid; if L is a list of real
;  numbers and P is a real number then (PARTITION L P) returns a list whose CAR is a list of the
;  elements of L that are strictly less than P, and whose CADR is a list of the other elements of L.
;  Each element of L must appear in the CAR or CADR of (PARTITION L P), and should appear
;  there just as many times as in L. Examples: (PARTITION '(7 5 3 2 1 5) 1) => (NIL (7 5 3 2 1 5))
;  (PARTITION '(4 0 5 3 1 2 4 1 4) 4) => ((0 3 1 2 1) (4 5 4 4)) (PARTITION ( ) 9) => (NIL NIL)
;  Complete the following definition of a function MY-PARTITION without making further calls
;  of PARTITION and without calling MY-PARTITION recursively, in such a way that if L is any
;  nonempty list of real numbers and P is a real number then (MY-PARTITION L P) is equal to
;  (PARTITION L P). (
; defun my-partition (L P)
;  (let ((X (partition (cdr L) P)))
;  ___________________________________________
;  ___________________________________________ ))
;  There are two cases: (car L) may or may not be less than P.


; (defun my-partition (l p)
; 	(let ((x (partition (cdr l) p))))
		
; 	)




		








