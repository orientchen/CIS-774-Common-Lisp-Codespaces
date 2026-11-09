(defun derivative (expr var)
  (cond
    ;; Constant
    ((numberp expr) 0)

    ;; Variable being differentiated
    ((eq expr var) 1)

    ;; Other symbols are treated as constants
    ((symbolp expr) 0)

    ;; Addition: (u + v)' = u' + v'
    ((eq (car expr) '+)
     (list '+
           (derivative (cadr expr) var)
           (derivative (caddr expr) var)))

    ;; Subtraction: (u - v)' = u' - v'
    ((eq (car expr) '-)
     (list '-
           (derivative (cadr expr) var)
           (derivative (caddr expr) var)))

    ;; Multiplication: (uv)' = u'v + uv'
    ((eq (car expr) '*)
     (let ((u (cadr expr))
           (v (caddr expr)))
       (list '+
             (list '* (derivative u var) v)
             (list '* u (derivative v var)))))

    ;; Division: (u/v)' = (u'v - uv') / v^2
    ((eq (car expr) '/)
     (let ((u (cadr expr))
           (v (caddr expr)))
       (list '/
             (list '-
                   (list '* (derivative u var) v)
                   (list '* u (derivative v var)))
             (list '* v v))))

    (t (error "Unsupported expression: ~S" expr))))


;; Test examples
(format t "~%1. Addition: ~S~%"
        (derivative '(+ X 5) 'X))

(format t "~%2. Subtraction: ~S~%"
        (derivative '(- X 2) 'X))

(format t "~%3. Multiplication: ~S~%"
        (derivative '(* X Y) 'X))

(format t "~%4. Division: ~S~%"
        (derivative '(/ X 3) 'X))

(format t "~%5. Polynomial: ~S~%"
        (derivative '(+ (* X X) (* 3 X)) 'X))
