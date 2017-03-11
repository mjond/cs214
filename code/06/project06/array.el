;; array.el stores user input in array and outputs them
;; By: Mark Davis
;; Date: March 30, 2016
;; Project 06, CS 214, Calvin College
;;Precondition: inputs are numbers
;; Output: elements in the array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;readArray() prompts user for input and stores it
;; Recieve: anArray, an array of numbers
;;          size, its size
;;Precondition: inputs are numbers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun readArray(anArray count size)
 (if (vectorp anArray) ;if anArray is a vector
     (if (< count size) ;if the recursive count is smaller than the size
	 (progn
	  (setq element (read)) ;get input
	  (aset anArray count element) ;store input in the array
	  (readArray anArray (+ count 1) size))))) ;call readArray for more input

readArray


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;printArray() outputs elements in an array
;; Recieve: anArray, array of numbers
;;          size, its size
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun printArray(anArray count)
  (if (vectorp anArray) ;if parameter is an array
      (if (< count (length anArray)) ;if the count is smaller than the length
	    (progn
	      (print (elt anArray count)) ;print out the element
	      (printArray anArray (+ count 1));call printArray for more ouputs
	      
	    )
	  )
    )
)

printArray

(defun main(size)
  (interactive "nEnter the array's size: ") ;prompt for size of array
  (setq anArray (make-vector size '0)) ;make array of size
  (readArray anArray 0 size) ;call functions to read input and output array
  (printArray anArray  0)
)


main


;;;;;;;tests;;;;;;;;

(readArray [0 0 0] 0 3)
nil



(printArray [1 2 3] 0)

1

2

3
nil








