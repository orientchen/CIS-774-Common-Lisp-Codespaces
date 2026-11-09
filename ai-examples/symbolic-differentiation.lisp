;; Teaching example: product-rule structure for (* x x).
;; This is NOT a general recursive differentiator or simplifier.
(defun differentiate-product (expr)
  (let ((u (cadr expr))
        (v (caddr expr)))
    (list '+
          (list '* 1 v)
          (list '* u 1))))

(print (differentiate-product '(* x x)))
