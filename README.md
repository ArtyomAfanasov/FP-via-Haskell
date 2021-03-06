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

* [Safe Enum](Part1/TypeClassSafeEnum.hs)

  Реализуйте класс типов обе функции которого ведут себя как succ и pred стандартного класса Enum, однако являются тотальными, то есть не останавливаются с ошибкой на наибольшем и наименьшем значениях типа-перечисления соответственно, а обеспечивают циклическое поведение. Ваш класс должен быть расширением ряда классов типов стандартной библиотеки, так чтобы можно было написать реализацию по умолчанию его методов, позволяющую объявлять его представителей без необходимости писать какой бы то ни было код. Например, для типа Bool должно быть достаточно написать строку.

  instance SafeEnum Bool

  и получить возможность вызывать

  GHCi> ssucc False
  
  True

  GHCi> ssucc True

  False

* [Sum of 3 lists](Part1/Sum3.hs)

  Составьте список сумм соответствующих элементов трех заданных списков. Длина результирующего списка должна быть равна длине самого длинного из заданных списков, при этом «закончившиеся» списки не должны давать вклада в суммы.

  GHCi> sum3 [1,2,3] [4,5] [6]
  
  [11,7,3]

* [Group elements](Part1/GroupElems.hs)

  Напишите функцию groupElems которая группирует одинаковые элементы в списке (если они идут подряд) и возвращает список таких групп.

  GHCi> groupElems []

  []

  GHCi> groupElems [1,2]

  [[1],[2]]

  GHCi> groupElems [1,2,2,2,4]

  [[1],[2,2,2],[4]]

  GHCi> groupElems [1,2,3,2,4]
  
  [[1],[2],[3],[2],[4]]

  Разрешается использовать только функции, доступные из библиотеки Prelude.

### Functional programming via Haskell part 2. Stepik -- https://stepik.org/course/693/syllabus.
