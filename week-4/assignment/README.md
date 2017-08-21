# Week 4 - Multi-class Classification and Neural Networks

>In this assignment, I implemented one-vs-all logistic regression and neural networks to recognize hand-written digits.

<br/>

**Files included in this exercise**:

| Functions        | Explanations           |
| ---------------- |:----------------------:|
| ex3.m | Octave/MATLAB script that steps you through part 1
| ex3 nn.m | Octave/MATLAB script that steps you through part 2
| ex3data1.mat | Training set of hand-written digits
| ex3weights.mat | Initial weights for the neural network exercise
| submit.m | Submission script that sends your solutions to our servers
| displayData.m | Function to help visualize the dataset
| fmincg.m | Function minimization routine (similar to fminunc)
| sigmoid.m | Sigmoid function
| lrCostFunction.m | Logistic regression cost function(*)
| oneVsAll.m | Train a one-vs-all multi-class classifier(*)
| predictOneVsAll.m | Predict using a one-vs-all multi-class classifier(*)
| predict.m | Neural network prediction function(*)

*The functions have been implemented by me

<br>

##1. Multi-class Classification
 
For this exercise, I has used logistic regression and neural networks to
recognize handwritten digits (from 0 to 9). 

Automated handwritten digit recognition is widely used today - from recognizing zip codes (postal codes)
on mail envelopes to recognizing amounts written on bank checks.
<br>

####1.1 Dataset

The ex3data1.mat contains 5000 training examples of handwritten digits (This is a subset of the MNIST handwritten digit dataset). Each training example is a 20 pixel by 20 pixel grayscale image of the digit. Each pixel is represented by a floating point number indicating the grayscale intensity at that location. 

The 20 by 20 grid of pixels is "unrolled" into a 400-dimensional vector. Each of these training examples becomes a single row in our data matrix X. This gives us a 5000 by 400 matrix X where every row is a training example for a handwritten digit image.

The second part of the training set is a 5000-dimensional vector y that contains labels for the training set. To make things more compatible with Octave/MATLAB indexing, where there is no zero index, we have mapped the digit zero to the value ten. Therefore, a "0" digit is labeled as "10", while the digits "1" to "9" are labeled as "1" to "9" in their natural order.

The file can be read directly by using the _load_ command.
<br>


####1.2 Vectorizing Logistic Regression

The calculation of cost function and gradient was fully vectorized. **lrCostFunction.m** does not contain any loops.

<br>

####1.3 One-vs-all Classification

In this part of the exercise, I implemented classification with using fmincg function which works similarly to fminunc, but is more more efficient for dealing with a large number of parameters. The classification was done by training multiple regularized logistic regression classifiers, one for each of the K classes in our dataset. The code could work for any value of K.

The codes are in '_oneVsAll.m_' function.

####1.4 One-vs-all Prediction

After training my classifier and learning my parameters, I can now use it to predict the digit contained in a given image. For each input, I computed the "probability" that it belongs to each class using the trained logistic regression classifiers. 

My prediction function picks the class for which the corresponding logistic regression classifier outputs the highest probability and return the class label (1, 2,..., or K) as the prediction for the input example.

The codes are in '_predictOneVsAll.m_' function.




