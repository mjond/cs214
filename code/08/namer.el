;;; namer.el simulates and tests an e-LISP Name type.
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by:Mark Davis
;;; Date: April 4, 2016


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Name constructs a name from three strings.      ;;
;;; Receive: first, middle and last, three strings. ;;
;;; Return: the triplet (first middle last).        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun Name ( myFirst myMiddle myLast)
(list myFirst myMiddle myLast))
Name


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst extracts the first name of a name object.;
;;; Receive: theName, a Name.                       
;;; Return: the first string in theName.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getFirst (theName)
  (car theName))
getFirst



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle extracts the middle name of a name object.
;;; Receive: theName, a Name.                      
;;; Return: the second string in theName.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getMiddle (theName)
  (car (cdr theName)))
getMiddle



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast extracts the last name of a name object.
;;; Receive: theName, a Name.                    
;;; Return: the third string in theName.       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getLast (theName)
  (car (cdr  (cdr theName))))
getLast



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setFirst changes the last name.
;;; Receive: theName, a Name.
;;;          aFirst, a string                    
;;; POST: first name is changed       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun setFirst (theName aFirst)
  (setf (nth 0 theName) aFirst))
setFirst



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setMiddle changes the middle name
;;; Receive: theName, a Name.
;;;          aMiddle, a string                    
;;; POST: middle name is changed       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun setMiddle (theName aMiddle)
  (setf (nth 1 theName) aMiddle))
setMiddle



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setLast changes the last name
;;; Receive: theName, a Name. 
;;;          aLast, a string                   
;;; POST: last name is changed       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun setLast (theName aLast)
  (setf (nth 2 theName) aLast))

setLast



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName returns a full name in F-M-L order. 
;;; Return: myFirst, myMiddle, myLast.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getFullName (theName)
  (concat (getFirst theName) " " (getMiddle theName) " "  (getLast theName)))

getFullName



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName displays a name object.         
;;; Receive: theName, a Name,                 
;;;          buffer, the name of a buffer.   
;;; Output: the strings in theName to buffer. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun printName (theName buf)
  (princ (getFullName theName) buf)
  (setq name theName))
printName



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi returns first, last and mi
;;; Receive: theName, a Name.                    
;;; Return: last, first, mi       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lfmi (theName)
  (concatenate 'string (car (cdr (cdr theName))) ", " (car theName) " " 
(substring (car (cdr theName)) 0 1)))
lfmi



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName() prompts for first, middle and last  ;
;;; Receive: theName, a Name.                      ;
;;; POST: first middle and last have new values    ;       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun readName (theName)
  (setq  nfirst (read-from-minibuffer "Please enter the first name "))
  (setq nmid (read-from-minibuffer "Please enter the middle name "))
  (setq nlast (read-from-minibuffer "Please enter the last name "))
  (list nfirst nmid nlast))
readName


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver for our Name functions. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (require 'cl)                              ; assert
  (setq aName (Name "John" "Paul" "Jones"))  ; build a Name

  (assert (equal (getFirst aName) "John" ))  ; test it
  (assert (equal (getMiddle aName) "Paul" ))
  (assert (equal (getLast aName) "Jones" ))
  (assert (equal (getFullName aName) "John Paul Jones" ))

;;;project 7 tests;;;
  (setFirst aName "Mark")
  (assert (equal (getFirst aName) "Mark" ))

  (setMiddle aName "Jonathan")
  (assert (equal (getMiddle aName) "Jonathan" ))

  (setLast aName "Davis")
  (assert (equal (getLast aName) "Davis"))

  (assert (equal (lfmi aName) "Davis, Mark J"))

  (setq aName (readName aName))
     (terpri buf)
  (printName aName buf)
  (assert (equal (getFirst aName) "Mark"))
  (assert (equal (getMiddle aName) "Jon"))
  (assert (equal (getLast aName) "Davis"))

  (setq buf (get-buffer "namer.el"))         ; buf = this buffer
  (assert (eq (printName aName buf) aName) ) ; output
  (terpri buf)                               ; newline

  (princ "All tests passed!")                ; feedback
  (terpri buf))                              ; newline

Mark Jon DavisMark Jon Davis
All tests passed!
t

























































