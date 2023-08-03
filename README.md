# ENGG7302 Advanced Computational Techniques in Engineering
The University of Queensland ENGG7302 Course Repo,
.m file starts with 'Question' is assignment 1
.m file starts 'A2' is assignment 2


\textbf{Assignment 1 Questions:}

Question 1
You have a certain type of chicken wire to build a temporary enclosure for holding a chicken 
in your backyard. You have 100m chicken wire and want to maximise the enclosure area for 
your given materials. 
(a) You plan to build a triangular enclosure (the lengths of three sides are x, y, and z, 
respectively. See Figure 1
Suppose x is 10m longer than y, find the lengths of the three sides x, y, and z. 
- Construct a one-dimensional optimisation model and solve it using the Golden 
Section Search method. Solution details and MATLAB codes are required.
(15 marks)
- Construct a two-dimensional optimisation model and solve it using the Lagrange 
multiplier method. Solution details are required (no MATLAB code required).
(10 marks)

(b) If it is a right-angled triangular enclosure, the longest side is known to be 41.4m, please 
find the two sides (x, y) using the Linear Programming (LP) method. 
- Please construct an optimisation model and solve it using MATLAB function 
linprog(). Solution details and MATLAB codes are required.
(20 marks)

Question 2
Suppose a linear equation is to be fit predicting raw material price as a linear function of the 
number of product A and product B (made of the same raw material) sold given the following 
data:
[Price of raw material] [Quantity of product A sold] [Quantity of product B sold]
5 9 1
2 13 8
9 17 3
4 10 9
6 15 2
10 8 5

Assume the prediction equation is
$y_i = c_0 +c_1 \cdot x_{1i} + c_2 \cdot x_{2i}$
, where $c_1 c_2$ are the prediction parameters on the quantity of products A and B sold,
respectively, and c_0 is the intercept. 
Define $x_{1i}, x_{2i}$ as the observations on the quantity of products A and B sold, respectively, and 
$y_i$ as the observed price. $i$ identifies the $i^{th}$ observation

(a) Suppose the desired criterion for equation fit is that the fitted data exhibit a minimum of 
the largest absolute deviation between the raw material price and its prediction.
Please construct an LP model to minimise the largest absolute deviation.
- Write down the tabular form of the formed LP problem. Explain the steps to get to the 
final tabular form. 
(20 marks)
- Solve the formed LP problem using the MATLAB function-linprog(); explain the result.
(10 marks)


(b) Suppose the desired criteria for equation fit is that the fitted data exhibit a minimum sum 
of the squared deviations between the raw material price and its prediction. You are then 
asked to solve the formed least square (LS) problem. 
- Write down the linear system equation (Ax=B) of the LS problem.
(15 marks)
- Solve the LS problem using the normal equations approach.
(10 marks)
