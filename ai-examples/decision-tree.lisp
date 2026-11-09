(defun classify-animal (feathers fly)
  (cond
    ((not feathers) 'not-bird)
    (fly 'flying-bird)
    (t 'flightless-bird)))

(print (classify-animal t nil))
