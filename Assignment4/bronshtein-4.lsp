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
	let ((x (sum (cdr L))))
		(+ x (car L)))


