;;; mylist.el is a "module" of list operations.
;;;
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Mark Davis
;;; Date: April 18, 2016

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Max2 finds the maximum of two values.       ;;
;;; Receive: val1, val2, two values.            ;;
;;; PRE: val1 and val2 can be compared using <. ;;
;;; Return: the maximum of val1 and val2.       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun Max2 (val1 val2)
  (if (> val1 val2)
      val1
    val2))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Max finds the maximum value in a list.         ;;
;;; Receive: aList, a list of values.              ;;
;;; PRE: values in aList can be compared using <.  ;;
;;; Return: the maximum value in aList.            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun Max (aList) 
  (if (listp aList)
      (progn
      (if (equal (length aList) 0) nil
        (if (equal (length aList) 1)
	  (car aList)
      (Max2 (car aList) (Max(cdr aList))))))
    nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; find finds an element in a list               ;;
;;; Recieve: aList, a list of values              ;;
;;;          aValue, an integer                   ;;
;;; Return: position of aValue                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun find (aList aValue)
  (if (listp aList)
      (progn
      (if (equal (car aList) aValue) 0 ) -1
         (find_c aList aValue 0))))

(defun find_c (aList aValue count)
   (if (equal (car aList) aValue) count
     (if (equal (length aList) 0) -1
       (find_c (cdr aList) aValue (+ count 1)))))






         
         
	
	










