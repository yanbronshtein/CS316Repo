(defun index (N L)
  (if (endp L) 
      'ERR
      (let X ((index (- N 1) (cdr L)))
         (cond ((= n 1) (car L))
               (t X)))))
    
(defun index (N L)
  (cond ((endp L)  'ERR)
        ((< n 1) 'ERR)
        ((= n 1) (car L))
        (t (index (- N 1) (cdr L)))))
;; (INDEX 3 '(A S (A S) (A) D))

; Mine!!
(defun min-first (L)
  (if (endp L)
      NIL
      (let ((X (min-first (cdr L))))
           (cond ((or (endp X) (<= (car L) (car X))) L)
                 (t (cons (car X) (cons (car L) (cdr X))))))))
  


; End Mine!


(defun remove-adj-dupl (L)
  (cond ((or (null L) (null (cdr L))) L)
        ((equal (car L) (cadr L)))
                (cons (car L) (cdr (remove-adj-dupl (cdr L))))
        (t (cons (car L) (remove-adj-dupl (cdr L))))))












