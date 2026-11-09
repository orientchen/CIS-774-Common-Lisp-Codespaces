(defparameter *expr* '(+ (* x x) (* 3 x)))

(print (car *expr*))    ; +
(print (cadr *expr*))   ; (* X X)
(print (caddr *expr*))  ; (* 3 X)
