(defpackage :fake-cl.quotes
  (:use :common-lisp)
  (:export *programming-quotes*))

(in-package :fake-cl.quotes)


(defvar *programming-quotes* '(
                               (:author "John McCarthy"
                                :quote "Lisp's core occupies some kind of
local optimum in the space of programming languages"))
