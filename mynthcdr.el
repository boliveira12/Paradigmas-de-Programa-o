(defun MYNTHCDR (valor lista)
(let ((resultado lista))
(dotimes (i valor resultado)
(setf resultado (cdr resultado)))))


(write (MYNTHCDR 5 '(1 2 3 4 5 6)))
# retorna (6)
