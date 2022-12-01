(defun MYREVERSE (lista)
(MYAPPENDREVERSE lista ()))

(defun MYAPPENDREVERSE (lista1 lista2)
(if (null lista1)
lista2
(MYAPPENDREVERSE (cdr lista1) (cons (car lista1) lista2))
))

(write (MYREVERSE '(1 2 3 4 5 6)))

# resultado -> 6 5 4 3 2 1
