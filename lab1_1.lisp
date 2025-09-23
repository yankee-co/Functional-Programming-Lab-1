;; Пункт 1 - Створення списку
(setq my-list (cons 'HELLO (list 42 (cons 'WORLD nil) (list 3.14 'LISP) nil)))

;; Пункт 2 - Голова списку
(car my-list)

;; Пункт 3 - Хвіст списку
(cdr my-list)

;; Пункт 4 - Третій елемент списку
(caddr my-list)

;; Пункт 5 - Останній елемент списку
(car (last my-list))

;; Пункт 6 - Предикати ATOM та LISTP
(atom (car my-list))
(atom (caddr my-list))
(atom 42)

(listp my-list)
(listp (caddr my-list))
(listp 'HELLO)

;; Пункт 7 - Інші предикати
(symbolp (car my-list))
(numberp (cadr my-list))
(null (car (last my-list)))

;; Пункт 8 - Об'єднання з підсписком через APPEND
(append my-list (caddr my-list))