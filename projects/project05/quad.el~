;quad.el computes roots of a quadratic equation
;
;Input: a, b and c
;Pre: a is positive
;Output: roots of given inputs
;lab05 CS 214 Calvin College
;Created by: Mark Davis
;Date: March 8, 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;quad() computes roots of quadratic equation
;receive: a, b, c
;pre: a is positive
;return; roots of quadratic equation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun quad(a b c)
  (if (equal a 0) ((message "*** quad() : a is negative!") break) ; if a is 0
      (setq answer (- (* b b) (* 4 a c))) ;else compute part of equation
       (if (>= answer 0) (progn ; if arg is bigger than 0
	   (setq root1 (/ (+ (- b) (sqrt answer)) (* 2 a))); computes 0
	   (setq root2 (/ (- (- b) (sqrt answer)) (* 2 a)))
	   (list root1 root2)); put results in list
	 (message " *** quad() : b^2 -4ac is negative! ")break)) ;error message
)

quad



(defun main(a b c)
  (interactive "nEnter a: ") ;prompt for input
  (interactive "nEnter b: ")
  (interactive "nEnter c: ")
  (setq result (quad a b c)) ;call quadratic function
  (setq part1 (elt result 0))
  (setq part2 (elt result 1))
  (message "Root 1 is %s and root 2 is %s" part1 part2); output message with results
)

main


;;;;;tests;;;;;

(main 1 -3 -4)
"Root 1 is 4.0 and root 2 is -1.0"

(main 1 3 1)
"Root 1 is -0.3819660112501051 and root 2 is -2.618033988749895"

(main 1 5 6)
"Root 1 is -2.0 and root 2 is -3.0"






















