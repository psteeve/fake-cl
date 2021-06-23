(defpackage :fake-cl
  (:use
   :common-lisp
   :faker.lorem ;;; rename to fake-cl.lorem
   :fake-cl.medecin
   :fake-cl.languages
   :fake-cl.country
   :fake-cl.number
   :fake-cl.list
   :fake-cl.phone
   :uuid
   :str)
  (:shadowing-import-from :str :words)
  (:export
   :gen-uuid
   :firstname
   :lastname
   :name
   :email
   :phone
   :functional-language
   :sentence
   :sentences
   :paris-metro
   :a-word
   :some-words
   :bool
   :medecin-specialist
   :language
   :country
   :list-of))

(in-package :fake-cl)

(defun firstname ()
  (fake-cl.list:make-length-based-random *first-name*))

(defun lastname ()
  (fake-cl.list:make-length-based-random *last-name*))

(defun name ()
  (format nil "~a ~a" (firstname) (lastname)))

(defun paris-metro ()
  (fake-cl.list:make-length-based-random *paris-metros*))

(defun phone ()
  (make-phone-number *phone-number*))

(defun email ()
  (format nil "~a.~a@~a"
          (firstname)
          (lastname)
          (fake-cl.list:make-length-based-random *free-email*)))

(defun medecin-specialist ()
  (fake-cl.list:make-length-based-random *specialities*))

(defun language ()
  (fake-cl.list:make-length-based-random *programming-languages*))

(defun functional-language ()
  (fake-cl.list:make-length-based-random *functional-languages*))

(defun random-from-list (list &optional (n 0))
  (fake-cl.list:-random-from-list list n))

(defun country ()
  (fake-cl.list:make-length-based-random *countries*))

(defun sentence ()
  (faker.lorem:paragraph))

(defun sentences (&optional (n 1) (number-of-word 30))
  (faker.lorem:paragraphs n number-of-word))

(defun a-word ()
  (faker.lorem:word))

(defun some-words (&optional (n 1))
  (faker.lorem:words n))

(defun bool ()
  (nth (random 2) '(t nil)))

(defun gen-uuid ()
  (string-downcase (format nil "~a" (uuid:make-v4-uuid))))

