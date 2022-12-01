(defun MYMEMBER (item lista)
(cond ((null lista) nil)
((equal item (car lista)) lista)
(t (MYMEMBER item (cdr lista)))
)
)

(write (MYMEMBER "e" '("minha" "mae" "e" "eu")))
