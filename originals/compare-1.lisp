	(defun compare(x y)
		(cond
			((> x y) (print "x greater than y"))
			((< x y) (print "x less than y"))
			(t	(print "x equal to y"))
		)
	)