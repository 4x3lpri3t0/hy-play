;;;; _001.hy

;;; TEST
(defn sum-100 [num]
  (+ 100 num))

(print (sum-100 1))

(print "=============================================")

;;;; Multiples of 3 or 5
;;; Find the sum of all the multiples of 3 or 5 below 1000.

(def acum 0)
(def collection (range 1000))

(defn check-if-multiple-of-3-or-5 [num acum]
    (if (or
            (= 0 (% num 3))
            (= 0 (% num 5)))
    num
    0))

;;; Iterate to N (collection) and send each element to function
(for [element collection] (print
                        (def acum (+ acum (check-if-multiple-of-3-or-5 element acum)))))

(print "Answer: ")
(print acum)