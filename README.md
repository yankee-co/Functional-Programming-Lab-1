<p align="center"><b>МОНУ НТУУ КПІ ім. Ігоря Сікорського ФПМ СПіСКС</b></p>
<p align="center">
<b>Звіт з лабораторної роботи 1</b><br/>
"Обробка списків з використанням базових функцій"<br/>
дисципліни "Вступ до функціонального програмування"
</p>
<p align="right"><b>Студент</b>: Землянський Едуард Вадимович КВ-22</p>
<p align="right"><b>Рік</b>: 2025</p>

## Загальне завдання

<!--
лістинг пунктів загального завдання можна навести або в одному блоці коду
із коментарями, що позначають початок виконання окремих пунктів, або ж
розділити весь лістинг на окремі блоки коду і додати для них підзаголовки
(напр. ### Пункт 1).
-->

```lisp
;; Пункт 1 - Створення списку з використанням LIST і CONS
;; Одна форма створення без проміжних змінних
CL-USER> (setq my-list (cons 'HELLO (list 42 (cons 'WORLD nil) (list 3.14 'LISP) nil)))
(HELLO 42 (WORLD) (3.14 LISP) NIL)

;; Пункт 2 - Отримання голови списку
CL-USER> (car my-list)
HELLO

;; Пункт 3 - Отримання хвоста списку
CL-USER> (cdr my-list)
(42 (WORLD) (3.14 LISP) NIL)

;; Пункт 4 - Отримання третього елементу списку
CL-USER> (caddr my-list)
(WORLD)

;; Пункт 5 - Отримання останнього елементу списку
CL-USER> (car (last my-list))
NIL

;; Пункт 6 - Використання предикатів ATOM та LISTP
CL-USER> (atom (car my-list))
T
CL-USER> (atom (caddr my-list))
NIL
CL-USER> (atom 42)
T

CL-USER> (listp my-list)
T
CL-USER> (listp (caddr my-list))
T
CL-USER> (listp 'HELLO)
NIL

;; Пункт 7 - Використання інших предикатів
CL-USER> (symbolp (car my-list))
T
CL-USER> (numberp (cadr my-list))
T
CL-USER> (null (car (last my-list)))
T

;; Пункт 8 - Об'єднання списку з його непустим підсписком
CL-USER> (append my-list (caddr my-list))
(HELLO 42 (WORLD) (3.14 LISP) NIL WORLD)
```
## Варіант 8
<p align="center">
<img width="736" height="238" alt="image" src="https://github.com/user-attachments/assets/9874c842-d1c1-4379-aa49-c0029baaf3eb" />

</p>

```lisp
CL-USER 1 > (let* ((d-cons (cons 'D nil)) 
       (bottom (cons 4 (cons d-cons (cons 5 nil))))
       (right  (cons 6 d-cons))) 
  (list bottom 'E 'F right))
((4 (D) 5) E F (6 D))
```
