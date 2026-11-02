(defun my-member (atom list)
  (cond
    ((null list) NIL)
    ((eq atom (car list)) T)
    (t (my-member atom (cdr list)))))

(print (my-member 'A '(A B C)))