(defun member-2 (K X)
  (cond ((endp x) nil)
        ((equal k (car x) t)
        (t (member-2 k (cdr x)))))

(defun swtich (L) (list (cadr l) (car l)))

(defun rotate-left (L) (append (cdr L) (list (car L))))