;;; max.el searches a list for its maximum value.
;;;
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Mark Davis
;;; Date: April 18, 2016

(add-to-list 'load-path ".")
("." "/usr/share/emacs24/site-lisp/a2ps" "/etc/emacs24" "/etc/emacs" "/usr/local/share/emacs/24.3/site-lisp" "/usr/local/share/emacs/site-lisp" "/usr/share/emacs24/site-lisp/dictionaries-common" "/usr/share/emacs/site-lisp/autoconf" "/usr/share/emacs/24.3/site-lisp" "/usr/share/emacs/site-lisp" "/usr/share/emacs/24.3/lisp" "/usr/share/emacs/24.3/lisp/vc" ...)



            ; setup load-path to WD
(load "mylist.elc")
t

 
                    ; load module

;;;;;;;;;;;;;;;;;;;;;;;;;
;;; test function Max. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (let
      ((buf (get-buffer "max.el"))       ; setup for output
       (list1 (list 99 88 77 66 55))     ; max is first
       (list2 (list 55 66 77 88 99))     ; max is last
       (list3 (list 55 77 99 88 66))    ; max in middle
       (list4 (list )))

    (princ list1 buf)                    ; print list1
    (terpri buf)                         ;  and a newline

    (princ list2 buf)                    ; print list2
    (terpri buf)                         ;  and a newline

    (princ list3 buf)                    ; print list3
    (terpri buf)                         ;  and a newline

    (princ list4 buf)                    ; print list4
    (terpri buf)                         ; and a newline
  
    (princ "The max in list 1 is " buf)  ; print the max
    (princ (Max list1) buf)              ;  in list1
    (terpri buf)                         ;  and a newline
    (princ "The max in list 2 is " buf)  ; print the max
    (princ (Max list2) buf)              ;  in list2
    (terpri buf)                         ;  and a newline
    (princ "The max in list 3 is " buf)  ; print the max
    (princ (Max list3) buf)              ;  in list3
    (terpri buf)                       	; and a newline
    (princ "The max in list 4 is " buf) 
    (princ (Max list4) buf)
    (terpri buf)))
(99 88 77 66 55)
(55 66 77 88 99)
(55 77 99 88 66)
nil
The max in list 1 is 99
The max in list 2 is 99
The max in list 3 is 99
The max in list 4 is nil
t











