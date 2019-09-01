;;;; Comment that describes my lisp program

;;; Basic Comment

;; Comment that is indented with my code

; Comment that comes after a line of code


#|| 
This is
a multine
comment
||#


(format t "Hello World my nigga!! Version one print to command line~%") ;This prints Hello World on the command line

(print "What's your name???? Version two print to command line ~%")

;;; Lisp is not case sensitive. Most variables are in lower case tho. No whitespace between vars




;;; Global vars surrounded by asterisk
(defvar *name* (read)) ;; read shows that name is read from the console


(defun hello-you (*name*)
	(format t "Hello ~a ~%!" *name*)
)

(setq *print-case* :capitalize ) ;;Could also use :upcase :downcase instaed of :capitalize

(hello-you *name*)

