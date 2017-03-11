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
       (list1 (list 99 88 77 66 55))     ; 99 is first
       (list2 (list 55 66 77 88 99))     ; 99 is last
       (list3 (list 55 77 99 88 66))    ; 99 in middle
       (list4 (list 55 66 77 44 88)))

    (princ list1 buf)                    ; print list1
    (terpri buf)                         ;  and a newline

    (princ list2 buf)                    ; print list2
    (terpri buf)                         ;  and a newline

    (princ list3 buf)                    ; print list3
    (terpri buf)                         ;  and a newline

    (princ list4 buf)                    ; print list4
    (terpri buf)                         ; and a newline
  
    (princ "The position of 99 in list 1 is " buf)  ; print the pos
    (princ (find list1 99) buf)                         ;  in list1
    (terpri buf)                                 ;  and a newline
    (princ "The position of 99 in list 2 is " buf)  ; print the pos
    (princ (find list2 99) buf)                         ;  in list2
    (terpri buf)                                    ;  and a newline
    (princ "The position of 99 in list 3 is " buf)  ; print the pos
    (princ (find list3 99) buf)                         ;  in list3
    (terpri buf)                                	; and a newline
    (princ "The position of 99 in list 4 is " buf) 
    (princ (find list4 99) buf)
    (terpri buf)))
(99 88 77 66 55)
(55 66 77 88 99)
(55 77 99 88 66)
(55 66 77 44 88)
The position of 99 in list 1 is 0
The position of 99 in list 2 is 4
The position of 99 in list 3 is 2
The position of 99 in list 4 is -1
t










