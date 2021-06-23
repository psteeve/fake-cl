(defpackage :fake-cl.number
  (:use :common-lisp)
  (:export :gen-positive-number
           :][))

(in-package :fake-cl.number)

(defun gen-positive-number (n)
  (let ((result (if (equal 0 n) 0 (random (abs n)))))
    (if (and (> n 1) (equal result 0))
        (gen-positive-number n)
        result)))

(defun ][ (min max)
  "Generate a positive number between min and max exclusively.
If min is same as max return min"
  (labels ((between (result)
             (if (> result (min min max))
                 result
                 (between (gen-positive-number (max min max))))))
    (if (equal min max)
        min
        (between (gen-positive-number (max min max))))))
