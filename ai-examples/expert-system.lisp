;; Facts
(defparameter *facts*
  '((human Socrates)
    (human Plato)
    (teacher Socrates Plato)))

;; Rule: Every human is mortal.
(defun mortal-p (person)
  (if (member (list 'human person) *facts* :test #'equal)
      t
      nil))

;; Queries
(print (mortal-p 'Socrates))  ; T
(print (mortal-p 'Zeus))      ; NIL
