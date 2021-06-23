(asdf:defsystem :fake-cl
  :serial t
  :components ((:file "lorem")
               (:file "medecin")
               (:file "number")
               (:file "list")
               (:file "phone")
               (:file "languages")
               (:file "haiti")
               (:file "country")
               (:file "fake-cl")               
               (:file "fake-data"))
  :depends-on (:str :uuid))
