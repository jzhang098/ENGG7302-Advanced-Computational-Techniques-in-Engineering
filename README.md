# ENGG7302 Advanced Computational Techniques in Engineering
ENGG7302 Course Repo,
.m file starts with 'Question' is assignment 1
.m file starts 'A2' is assignment 2


## Assignment 1 Questions

### Question 1
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

### Question 2
Suppose a linear equation is to be fit predicting raw material price as a linear function of the 
number of product A and product B (made of the same raw material) sold given the following 
data:

% [[Price of raw material] [Quantity of product A sold] [Quantity of product B sold]]

[5 9 1;
2 13 8;
9 17 3;
4 10 9;
6 15 2;
10 8 5];

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


## Assignment 2

### Question 1
There is a signal b collected at M sampling points(b(1), b(2), …b(m), …,b(M)), and 
you are asked to strategically place N components x (x(1), x(2), …,x(n),…x(N)) into 
the system to modify the signal profile. The modified signal profile is expressed as 
B=Ax+b.
The matrix A and vector b are stored in files: A.mat and b.mat, and in Matlab, you 
can access the data as follows: load A; load b.
You are asked to implement the following tasks:

Q1(a): 
Use the Singular Value Decomposition (SVD) technique to find x (consider low-rank 
approximation r=200).
Based on your SVD results, find the condition number of A.
(Note- SVD can be calculated by Matlab built-in function).

Q1(b): 
Use the regularisation approach (regularised linear least squares) to find x.
Select different regularisation parameters 𝜆 = $1e^{-10},1e^{-9},1e^{-8},1e^{-7},1e^{-6}, 1e^{-5}, 1e^{-4}, 1e^{-3}, 1e^{-2}$
Plot an L-curve figure that shows the relationship between 2-norm(x) and 2-norm(Ax-b) with different regularisation parameters.
(Note – refer to lecture notes (LA9, Least square problems).

Q1(c): 
The signal B will satisfy the following condition: |𝐁 − 𝐁𝟎| ≤ 𝐁𝟎 ∈, where, 𝑩𝟎 is the 
mean value of B. And ∈ (𝑚) = $1𝑒^{-4}$, 𝑚=1,2,…M. In addition, b and B are both 
positive vectors. The range of components x: 0≤x(n) ≤ $5𝑒^{−3}$, n=1,2,…,N.
Write a Matlab code to minimise the 1-norm of vector x. 
Note: please consider the function linprog() in Matlab; 

### Question 2 
Assessment Type: Application
Task Description:
The student needs to prepare a presentation (ppt file (at least ten slides) + audio 
recording file) on real-world applications that use concepts learned in the linear 
algebra (LA) part.
The presentation should contain the following sections 
(1) introduction; 
(2) theory/methods; 
(3) results and discussion/interpretation;
(4) conclusion and 
(5) reference.


## Disclaimer:
The material contained in this repository is intended solely for educational purposes and for demonstration of my own understanding and interpretation of the subject matter. I make no warranties about the completeness, reliability, or accuracy of this information.

## Terms and Conditions:

Use of Materials: Users may access, download, and use these materials for personal, educational, and non-commercial purposes only. Any redistribution or reproduction of part or all of the contents in any form is prohibited without my express written permission.

Attribution: If you wish to reference or cite any of the content, please provide appropriate attribution to me as the author, and include a link back to the original repository.

No Academic Misconduct: These materials must not be used to engage in academic misconduct, including, but not limited to, submitting them as your own work in any academic setting. I accept no responsibility for any consequences resulting from such actions.

No Warranty: The materials are provided "as is." I make no warranties, expressed or implied, and hereby disclaim and negate all other warranties including, without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights.

Limitation of Liability: In no event shall I be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use the materials on this GitHub repository, even if I or an authorized representative has been notified orally or in writing of the possibility of such damage.

Changes to Terms and Conditions: I reserve the right to update or change these terms and conditions at any time without notice. Any changes will be effective immediately upon posting to this repository. By accessing or using these materials, you agree to be bound by the then-current version of these terms and conditions.
