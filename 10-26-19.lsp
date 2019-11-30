;; (setf X '(88 ((11 21 31 41)) (90 91 92 93)))


;; (print (list ((caaadr x) (caadr x) (cons (car x) (caddr x)))))



;; (defun inc-list-2 (L N)
;;   (print "Printing L:")
;;   (print L)
;;   (cond ((endp L) nil)
;;         (t (let ((X (inc-list-2 (cdr L) N)))
;;                   (print "X:")
;;                   (print X)
;;                   (cons (+ N (car L)) X)))))


(defun inc-list-2 (L N)
  (cond ((endp L) nil)
        (t (cons (+ N (car L)) (inc-list-2 (cdr L) N)))))


;; (defun our-map-car (f L)
;;   (cond ((null L) nil)
;;         (t (cons (funcall f (car L)) (our-map-car f (cdr L)))))))


;; (defun our-map-car (f L)
;;   (cond ((null L) nil)
;;         (t ((let ((X (our-map-car f (cdr L))))
;;                  (cons (funcall f (car L) X)))))))


(defun our-map-car (f L)
  (if (endp L)
    nil
    (let ((X (our-map-car f (cdr L)))
         (cons (funcall f ((car L)) x))))))


(setf E '(((9 19 29) 39 49 59 69 79) ((111 222) (90 91 92 93 94))))


;; ((90 91 92 93 94) (111 222 39 49 59 69 79))
