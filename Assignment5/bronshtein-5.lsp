;Problem 1
; (defun my-index (n l)
;   (let ((x (index (- n 1) (cdr l))))
;     (cond ((= n 1) (car l))
;           (t x))))


(defun index (n l)
  (cond ((null l) 'ERR)
        ((< n 1) 'ERR)
        ;; ((> (list-length l) n) 'ERR)
        (t (let ((x (index (- n 1) (cdr l))))
            (cond ((= n 1) (car l))
                  (t x))))))
; Problem 2




;; (defun my-min-first (l)
;;   (let ((x (min-first (cdr l))))
;;     (cond ((> (car l) (car x))
;;             (cons (car x) (cons (car l) (cdr x))))
;;             (t l))))

(defun min-first (l)
  (cond ((equal (cadr l) nil) l)
        (t (let ((x (min-first (cdr l))))
          (cond ((> (car l) (car x))
            (cons (car x) (cons (car l) (cdr x))))
            (t l))))))



(defun my-ssort (l)
  (let* ((L1 (min-first l))
         (x (ssort (cdr l1))
         (cons (car l1) x)))))


  

;; (defun ssort (L)
;;    (if (endp L)
;;        nil
;;        (if (equal (cadr L) nil)
;;            L   
;;            (let* ((L1 (min-first L))
;;                   (X (ssort (cdr L1))))
;;                   (cons (car L1) X)))))