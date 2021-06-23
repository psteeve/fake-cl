(defpackage :faker.lorem
  (:use :common-lisp)
  (:export
   :word
   :words
   :paragraph
   :paragraphs))

(in-package :faker.lorem)

(defvar *prologue*
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit")

(defvar *words*
  #("do" "eiusmod" "incididunt" "labore" "dolore" "aliqua" "erat" "bibendum"
    "venenatis" "condimentum" "nisi" "natoque" "penatibus" "magnis" "dis"
    "parturient" "montes" "aenean" "nam" "ante" "metus" "tempor" "nullam"
    "suscipit" "justo" "posuere" "eleifend" "vulputate" "luctus" "accumsan"
    "lacus" "dictum" "fusce" "euismod" "placerat" "elementum" "pharetra"
    "maecenas" "ultricies" "suspendisse" "potenti" "pulvinar" "gravida"
    "hendrerit" "interdum" "laoreet" "magna" "urna" "porttitor" "rhoncus"
    "dolor" "non" "praesent" "nec" "pretium" "fringilla" "est" "nulla"
    "facilisi" "etiam" "dignissim" "tincidunt" "lobortis" "vivamus" "augue"
    "velit" "ligula" "ullamcorper" "malesuada" "a" "duis" "diam" "quam" "mattis"
    "libero" "ornare" "arcu" "elit" "pellentesque" "habitant" "tristique"
    "senectus" "netus" "ut" "sem" "eget" "viverra" "integer" "feugiat"
    "scelerisque" "varius" "mollis" "consectetur" "lorem" "donec" "sapien"
    "molestie" "semper" "auctor" "neque" "vitae" "tempus" "nisl" "ipsum"
    "faucibus" "cras" "adipiscing" "enim" "eu" "turpis" "volutpat" "consequat"
    "nunc" "congue" "leo" "vel" "porta" "fermentum" "et" "sollicitudin" "ac"
    "orci" "phasellus" "egestas" "tellus" "rutrum" "mauris" "amet" "massa"
    "nibh" "tortor" "id" "aliquet" "lectus" "proin" "aliquam" "vestibulum"
    "blandit" "risus" "at" "ultrices" "mi" "facilisis" "sed" "morbi" "quis"
    "commodo" "odio" "cursus" "in" "hac" "habitasse" "platea" "dictumst"
    "quisque" "sagittis" "purus" "sit"))

(defun word () (aref *words* (random (length *words*))))


(defun words (n) (loop repeat n collect (word)))

(defun paragraph (&optional (number-of-word 30))
  (with-output-to-string (s)
    (princ *prologue* s)
    (princ "." s)
    (dotimes (i number-of-word)
      (princ " " s)
      (princ (aref *words* (random (length *words*))) s))
    (when (> number-of-word 0) (princ "." s))))

(defun paragraphs (n &optional (number-of-word 30))
  (with-output-to-string (s)
    (dotimes (i n)
      (princ (paragraph number-of-word) s)
      (princ #\NewLine s))))
