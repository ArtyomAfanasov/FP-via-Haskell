# FP-via-Haskell
### Functional programming via Haskell part 1. Stepik -- https://stepik.org/course/75/syllabus.

* [Fibonacci taks](Part1/Fibonacci.hs):

  Using accumulator pattern.

* [Recurrent Sequence task](Part1/RecurrentSequence.hs):
  
  Implement an element search function using the following formula. 
  
  <img src="https://render.githubusercontent.com/render/math?math=a_0 = 1, a_1 = 2, a_2 = 3, a_{k %2B 3} = a_{k %2B 2} %2B a_{k %2B 1} - 2a_k">
  
  GHCi> getElement 301
  
  1276538859311178639666612897162414

* [Sum and count of digits in number](Part1/SumAndCountOfDigits.hs)

  Реализуйте функцию, находящую сумму и количество цифр десятичной записи заданного целого числа.
  
  GHCi> sum'n'count (-39)
  
  (12,2)

* [Integration via trapezoid method](Part1/Integration.hs)

  Реализуйте функцию, находящую значение определённого интеграла от заданной функции ff на заданном интервале [a,b][a,b] методом трапеций. (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.)
   
  GHCi> integration sin pi 0
  
  -2.0

* [Classes of types implementation for Bool and Unit with toString function](Part1/ClassesOfTypes.hs)

  Реализуйте класс типов Printable, предоставляющий один метод toString — функцию одной переменной, которая преобразует значение типа, являющегося представителем Printable, в строковое представление.
 
  Сделайте типы данных Bool и () представителями этого класса типов, обеспечив следующее поведение:

  GHCi> toString True

  "true"

  GHCi> toString False

  "false"

  GHCi> toString ()

  "unit type"

  Сделайте тип пары представителем класса типов Printable, реализованного вами в предыдущей задаче, обеспечив следующее поведение:

  GHCi> toString (False,())

  "(false,unit type)"

  GHCi> toString (True,False)

  "(true,false)"

* [Class Extention](Part1/GorkMork.hs)

  Пусть существуют два класса типов KnownToGork и KnownToMork, которые предоставляют методы stomp (stab) и doesEnrageGork (doesEnrageMork) соответственно.

  Класса типов KnownToGorkAndMork является расширением обоих этих классов, предоставляя дополнительно метод stompOrStab.

  class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where

    stompOrStab :: a -> a

  Задайте реализацию по умолчанию метода stompOrStab, которая вызывает метод stomp, если переданное ему значение приводит в ярость Морка; вызывает stab, если оно приводит в ярость Горка и вызывает сначала stab, а потом stomp, если оно приводит в ярость их обоих. Если не происходит ничего из вышеперечисленного, метод должен возвращать переданный ему аргумент.

### Functional programming via Haskell part 2. Stepik -- https://stepik.org/course/693/syllabus.
