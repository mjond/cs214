; factorial.el computes factorials

;input: a number
;precondition: number is positive
;output: factorial of number

;created by: Mark Davis CS 214, Calvin College
;date: March 1, 2015
;Model Code: Project 1, CS 214

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;function factorial computes factorial
;parameters: number
;precondition: number>0
;returns: factorial of number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun factorial(n)
  (if (= n 1)
      1
      (* n (factorial (- n 1))) ) )

factorial

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;main function
;input: number
;output: factorial of number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun main(n)
  (interactive "nEnter a number: ")
  (setq ans (factorial n))
  (message "%i! = %i " n ans)
)
main


;;;;tests;;;;;

(main 4)
"4! = 24 "

(main 5)
"5! = 120 "

(main 6)
"6! = 720 "






