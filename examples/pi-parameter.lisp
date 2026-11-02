;; CL:PI is a built-in constant; do not redefine it.
(defparameter *approx-pi* 3.14)
(defparameter *twopi* (* 2 *approx-pi*))
(format t "Approximate 2 pi = ~A~%" *twopi*)
