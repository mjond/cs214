Script started on Mon 25 Apr 2016 08:04:12 PM EDT
mjd85@hollerith:~/Documents/214/code/10/e-lisp$ cat lab10.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;CS 214, Lab10. function.el is lisp part of lab
;;Mark Davis
;;april 25, 2016
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; PART 1 ;;
(lambda (x) (+ x x) )
((lambda (x) (+ x x)) 17)
34

;;exercise 1a
(lambda (a b c d) (max (abs a) (abs b) (abs c) (abs d)))
((lambda (a b c d) (max (abs a) (abs b) (abs c) (abs d))) 1 2 3 4)
4

;;exercise 1b
((lambda (x y z) (+ x y z)) 1 2 3)
6
((lambda (x) (null x)) 1)
nil
((lambda () 17.2) )
17.2

;; PART 2 ;;
 
;;first part
(setq triple #'(lambda (x) (+ x x x)))
(lambda (x) (+ x x x))

(funcall triple 11)
33

;;exercise 2;;

(defun sum-squares (list)
  (apply #'+ (mapcar #'(lambda (x) (* x x)) list)))
sum-squares

(sum-squares '(1 2 3))
14











mjd85@hollerith:~/Documents/214/code/10/e-lisp$ exit
exit

Script done on Mon 25 Apr 2016 08:04:16 PM EDT
