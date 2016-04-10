---
title       : Generalized Linear Models (GLMs)
subtitle    : 
author      : Brandon Hu
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
## What are Generalized Linear Models?

Extensions of traditional regression models which:
* Allow the mean to depend on the explanatory variables through a link function 
* Response variable to be any member of a set of distributions

In R we can use:
* The function glm() to work with generalized linear models

---

## Why Linear Regression?

* Easy to use
* Easy to interpret
* Applicable for a huge variety of problems
* Fairly accurate

$\Rightarrow$ Most widely used algorithms by data scientists

<img src="assets/fig/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

---

## Why GLM?

* Response variable has lots of problems with discrete outcomes
* Error models have to stay interpretable even when the outcome has to be positive
* Swiss data model demonstrate linear gression with multiple predictors (refer to next slide for the application which show case it)


```
## 
## Call:  glm(formula = Infant.Mortality ~ Fertility + Education + Catholic, 
##     data = swiss)
## 
## Coefficients:
## (Intercept)    Fertility    Education     Catholic  
##    7.867371     0.159631     0.103403    -0.006246  
## 
## Degrees of Freedom: 46 Total (i.e. Null);  43 Residual
## Null Deviance:	    390.3 
## Residual Deviance: 298.3 	AIC: 230.2
```

---

## Developed Application

Developed an application to allow one to learn about GLM:
* Without R knowledge 
* To focus on the algorithm
* Test out with different predictors and compare their effects

<center><img src=./assets/img/main.png height='60%' width='60%' style='margin:0px; border: 2px solid #FF0000'/></center>

