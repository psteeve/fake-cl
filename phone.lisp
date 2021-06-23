(defpackage :fake-cl.phone
  (:use :common-lisp :fake-cl.list)
  (:export
   :make-phone-number))

(in-package :fake-cl.phone)

(defun make-phone-number (phone-format)
  (let* ((form (fake-cl.list:make-length-based-random phone-format))
         (form-split (uiop:split-string form :separator '(#\~))))
    (format nil "~a~{~a~}"
            (car form-split)
            (mapcar (lambda (x)
                      (declare (ignore x))
                      (random 9))
                    (cdr form-split)))))
