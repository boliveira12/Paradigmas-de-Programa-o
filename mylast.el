(defun MYLAST (lista)
(if (null lista)
()
(if (null (cdr lista))
lista
(MYLAST (cdr lista))
)))
