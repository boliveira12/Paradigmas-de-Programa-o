(defun MYLENGTH (lst1)
    (defvar *total* 0)
    (dolist (item lst1)
        (setf *total* (+ *total* 1)))
(write *total*)
)
