(defparameter *graph*
  '((A B) (A C) (B D) (C D)))

(defun neighbors (node edges)
  (mapcar #'cadr
          (remove-if-not
           (lambda (e) (eq (car e) node))
           edges)))

(print (neighbors 'A *graph*))
