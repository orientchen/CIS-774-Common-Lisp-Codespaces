;; New companion example for the tree traversal slide.
;; Tree structure: (node left-subtree right-subtree); NIL is empty.
(defparameter *tree*
  '(A (B (D nil nil) (E nil nil))
      (C (F nil nil) (G nil nil))))

(defun preorder (tree)
  (when tree
    (append (list (first tree))
            (preorder (second tree))
            (preorder (third tree)))))

(defun inorder (tree)
  (when tree
    (append (inorder (second tree))
            (list (first tree))
            (inorder (third tree)))))

(format t "Preorder: ~{~A~^ ~}~%" (preorder *tree*))
(format t "Inorder: ~{~A~^ ~}~%" (inorder *tree*))
