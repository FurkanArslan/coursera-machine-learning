# Week 6 | Regularized Linear Regression and Bias/Variance

>In this exercise, I implemented regularized linear regression and use it to study models with different bias-variance properties.

<br/>

**Files included in this exercise**:

| Functions        | Explanations           |
| ---------------- |:----------------------:|
|ex5.m | Octave/MATLAB script that steps you through the exercise
|ex5data1.mat | Dataset
|submit.m | Submission script that sends your solutions to our servers
|featureNormalize.m | Feature normalization function
|fmincg.m | Function minimization routine (similar to fminunc)
|plotFit.m | Plot a polynomial t
|trainLinearReg.m | Trains linear regression using your cost function
| linearRegCostFunction.m | Regularized linear regression cost func-
tion*
| learningCurve.m | Generates a learning curve*
| polyFeatures.m | Maps data into polynomial feature space*
| validationCurve.m | Generates a cross validation curve*

*The functions have been implemented by me

<br>

<h2>1. Regularized Linear Regression</h2>

> In this part, I implemented regularized linear regression to predict the amount of water owing out of a dam using the change of water level in a reservoir.

<h4> 1.1 Visualizing the dataset </h4>

I have began by visualizing the dataset containing historical records on the
change in the water level, x, and the amount of water 
owing out of the dam,
y.

This dataset is divided into three parts:

* A training set that your model will learn on: X, y
* A cross validation set for determining the regularization parameter:
Xval, yval
* A test set for evaluating performance. These are "unseen" examples
which your model did not see during training: Xtest, ytest

Figure-1 shows the data:

![alt text](images/figure-1.PNG "Figure-1")

<h4> 1.1 Visualizing the dataset </h4>

The cost function of regularized linear regression:
![alt text](images/regularized-linear-regression.PNG "regularized-linear-regression")

where &lambda; is a regularization parameter which controls the degree of regularization (thus, help preventing overfitting). The regularization term puts a penalty on the overal cost J. As the magnitudes of the model parameters &theta;<sub>j</sub> increase, the penalty increases as well.
