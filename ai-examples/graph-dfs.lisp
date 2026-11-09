;; Load the graph and neighbors function from the preceding example.
(load "ai-examples/graph-representation.lisp")

(defun dfs (node goal visited)
  (cond
    ((eq node goal) (list node))
    ((member node visited) nil)
    (t
     (dolist (next (neighbors node *graph*))
       (let ((path (dfs next goal (cons node visited))))
         (when path
           (return-from dfs (cons node path)))))
     nil)))

(print (dfs 'A 'D nil))
