(defpackage :fake-cl.list
  (:use :common-lisp :fake-cl.number)
  (:export
   :list-of
   :-random-from-list
   :make-length-based-random))
(in-package :fake-cl.list)

(defun list-of (n generator)
  "Return a list N values of type returned by GENERATOR. 
If N is 0 return one value instead of a list."
  (if (> n 0)
      (loop for i to (1- n) collecting (funcall generator))
      (funcall generator)))

(defun make-length-based-random (list)
  (nth (random (length list)) list))

(defun -random-from-list (list &optional (n 0))
  "Return a value randomly from LIST or a list of value of length N if N is > 0"
  (let* ((length (length list))
         (limit (min length n)))
    (if (> n 0)
        (let ((result nil))
          (dotimes (i limit)
            (push (nth (random length) list) result))
          result)
        (nth (random length) list))))
