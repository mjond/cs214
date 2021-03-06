;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

;grade_switch is a driver function for grade_switch
;created by Mark Davis
;Date: February 25, 2016
;CS 214, project03 CALVIN COLLEGE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;receive: grade, an integer
;precondition: integer is positive
;return: corresponding letter grade
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun letterCode(grade) ;declare function
  (pcase (format "%id" grade/10))
  (or 10 9) "A")
  (8) "B")
  (7) "C")
  (6) "D")
  (code) "F"))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;main function
;input: a grade, integer
;output: corresponding letter grade
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun main(grade) ;declare main function
  (interactive "sEnter your average grade: ") ;read grade
  (string-to-number grade) ;convert to number
  (message "%d" (letterCode grade)) ;display corresponding letter grade
)




