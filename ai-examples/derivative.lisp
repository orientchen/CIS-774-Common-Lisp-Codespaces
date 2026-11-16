(defun derivative (expr var)
  "Compute the symbolic derivative of EXPR with respect to VAR."
  (cond
    ;; Case 1: constant number → derivative is 0
    ((numberp expr) 0)

    ;; Case 2: the variable itself → derivative is 1
    ((eq expr var) 1)

    ;; Case 3: addition → derivative of each term
    ((eq (first expr) '+)
     (list '+ (derivative (second expr) var)
              (derivative (third expr) var)))

    ;; Case 4: multiplication → product rule: (u*v)' = u'*v + u*v'
    ((eq (first expr) '*)
     (list '+
           (list '* (derivative (second expr) var) (third expr))
           (list '* (second expr) (derivative (third expr) var))))

    ;; Otherwise, unknown form → return 'unknown
    (t 'unknown)))
