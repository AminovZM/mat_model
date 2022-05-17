---
# Front matter
title: "Отчёт по лабораторной работе №7"
subtitle: "Вариант 40"
author: "Аминов Зулфикор Мирзокаримович"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Изучение задачи об эффективности рекламы.

# Теоретическое введение

**Эффективность рекламы**

Организуется рекламная кампания нового товара или услуги. Необходимо,
чтобы прибыль будущих продаж с избытком покрывала издержки на рекламу.
Вначале расходы могут превышать прибыль, поскольку лишь малая часть
потенциальных покупателей будет информирована о новинке. Затем, при
увеличении числа продаж, возрастает и прибыль, и, наконец, наступит момент,
когда рынок насытиться, и рекламировать товар станет бесполезным.

Предположим, что торговыми учреждениями реализуется некоторая продукция,
о которой в момент времени $t$ из числа потенциальных покупателей $N$ знает
лишь $n$ покупателей. Для ускорения сбыта продукции запускается реклама по
радио, телевидению и других средств массовой информации. После запуска рекламной
кампании информация о продукции начнет распространяться среди потенциальных
покупателей путем общения друг с другом. Таким образом, после запуска рекламных
объявлений скорость изменения числа знающих о продукции людей пропорциональна как
числу знающих о товаре покупателей, так и числу покупателей о нем не знающих

Модель рекламной кампании описывается следующими величинами.
Считаем, что $\frac{dn}{dt}$ - скорость изменения со временем числа потребителей, узнавших о товаре и готовых его купить,
$t$ - время, прошедшее с начала рекламной кампании,
$N$ - общее число потенциальных платежеспособных покупателей,
$n(t)$ - число  уже информированных клиентов.
Эта величина пропорциональна числу покупателей, еще не знающих о нем, это описывается следующим образом
$\alpha _1(t)(N-n(t))$, где $\alpha _1>0$ -  характеризует интенсивность рекламной кампании (зависит от затрат на рекламу в данный момент времени).
Помимо этого, узнавшие о товаре потребители также распространяют полученную информацию среди потенциальных
покупателей, не знающих о нем (в этом случае работает т.н. сарафанное радио). Этот вклад в рекламу описывается
величиной  $\alpha _2(t)n(t)(N-n(t))$. эта величина увеличивается с увеличением потребителей узнавших о товаре.

Математическая модель распространения рекламы описывается уравнением:

$$\frac{dn}{dt} = (\alpha _1(t) + \alpha _2(t)n(t))(N-n(t))$$

При $\alpha _1(t) >> \alpha _2(t)$ получается модель типа модели Мальтуса, решение которой имеет вид 

![График решения уравнения модели Мальтуса](image/01.png){ #fig:001 width=70% height=70% }

В обратном случае $\alpha _1(t) << \alpha _2(t)$ получаем уравнение логистической кривой

![График логистической кривой](image/02.png){ #fig:002 width=70% height=70% }



# Задание
1. Построить график распространения рекламы о салоне красоты ($N_0$ и $N$-задайте самостоятельно).
2. Сравнить эффективность рекламной кампании при $\alpha _1(t) > \alpha _2(t)$ и $\alpha _1(t) < \alpha _2(t)$
3. Определить в какой момент времени эффективность рекламы будет иметь максимально быстрый рост (на вашем примере).
4. Построить решение, если учитывать вклад только платной рекламы
5. Построить решение, если предположить, что информация о товаре распространятся только путем «сарафанного радио», сравнить оба решения

# Вариант 40
Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

1.	$\frac{dn}{dt} = (0.12 + 0.000039n(t))(N-n(t))$
2.	$\frac{dn}{dt} = (0.000012 + 0.29n(t))(N-n(t))$
3.	$\frac{dn}{dt} = (0.12\cos{t} + 0.29\cos{t}n(t))(N-n(t))$

При этом объем аудитории N=1600, в начальный момент о товаре знает 13 человек. Для
случая 2 определите в какой момент времени скорость распространения рекламы будет
иметь максимальное значение.

# Выполнение лабораторной работы и результат работы

**Код 1**

```
model lab_7_1
  parameter  Real a=0.12;
  parameter  Real b=0.000039;
  parameter  Real N=1600;
    
  Real n(start=13);
  equation
    der(n) = (a+b*n) * (N-n); 

end lab_7_1;


```

![случай 1](image/1.png){ #fig:003 width=70% height=70% }

**Код 2**

```
model lab_7_2
  parameter  Real a=0.000012;
  parameter  Real b=0.29;
  parameter  Real N=1600;
    
  Real n(start=13);
  equation
    der(n) = (a+b*n) * (N-n); 

end lab_7_2;
```

![случай 2](image/2.png){ #fig:004 width=70% height=70% }

**Код 3**

```
model lab_7_3
  parameter  Real a=0.12;
  parameter  Real b=0.29;
  parameter  Real N=1600;
    
  Real n(start=13);
  equation
    der(n) = (cos(time)*a + b*cos(time)*n ) * (N-n); 

end lab_7_3;
```

![случай 3](image/3.png){ #fig:005 width=70% height=70% }


# Выводы

Изучили задачи об эффективности рекламы и построили графики.
