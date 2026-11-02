	(defun compare(x y)
		(cond
			((> x y) (print "x greater than y"))
			((< x y) (print "y less than x"))
			(t	(print "x equal to y"))
		)
	)

    (print (compare 1 2))