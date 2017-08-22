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

<h2>1. Multi-class Classification</h2>
 
For this exercise, I implemented multi-class logistic regression to recognize handwritten digits (from 0 to 9).

Automated handwritten digit recognition is widely used today - from recognizing zip codes (postal codes)
on mail envelopes to recognizing amounts written on bank checks.
<br>

<h4>1.1 Dataset</h4>

The ex3data1.mat contains 5000 training examples of handwritten digits (This is a subset of the MNIST handwritten digit dataset). Each training example is a 20 pixel by 20 pixel grayscale image of the digit. Each pixel is represented by a floating point number indicating the grayscale intensity at that location. 

The 20 by 20 grid of pixels is "unrolled" into a 400-dimensional vector. Each of these training examples becomes a single row in our data matrix X. This gives us a 5000 by 400 matrix X where every row is a training example for a handwritten digit image.

The second part of the training set is a 5000-dimensional vector y that contains labels for the training set. To make things more compatible with Octave/MATLAB indexing, where there is no zero index, we have mapped the digit zero to the value ten. Therefore, a "0" digit is labeled as "10", while the digits "1" to "9" are labeled as "1" to "9" in their natural order.

The file can be read directly by using the _load_ command.
<br>


<h4>1.2 Vectorizing Logistic Regression</h4>

The calculation of cost function and gradient was fully vectorized. **lrCostFunction.m** does not contain any loops.

<br>

<h4>1.3 One-vs-all Classification</h4>

In this part of the exercise, I implemented classification with using fmincg function which works similarly to fminunc, but is more more efficient for dealing with a large number of parameters. The classification was done by training multiple regularized logistic regression classifiers, one for each of the K classes in our dataset. The code could work for any value of K.

The codes are in '_oneVsAll.m_' function.

<h4>1.4 One-vs-all Prediction</h4>

After training my classifier and learning my parameters, I can now use it to predict the digit contained in a given image. For each input, I computed the "probability" that it belongs to each class using the trained logistic regression classifiers. 

My prediction function picks the class for which the corresponding logistic regression classifier outputs the highest probability and return the class label (1, 2,..., or K) as the prediction for the input example.

As a result, the success of my model is almost 95%.

The codes are in '_predictOneVsAll.m_' function.

<h2>2. Neural Networks</h4>

In previous part of this exercise, I implemented logistic regression to recognise handwritten digits. However, logistic regression cannot form more complex hypotheses as it is only a linear classifier. So, I implemented a neural network to represent complex models that form non-linear hypotheses. For this week, I  used parameters from a neural network that have been already trained.

<h4>2.1 Model representation</h4>

Our neural network has 3 layers: 
- an input layer, 
- a hidden layer,
- an output layer. 

Recall that our inputs are pixel values of
digit images. Since the images are of size 20x20, this gives us 400 input layer
units (excluding the extra bias unit which always outputs +1). As before,
the training data will be loaded into the variables X and y.

I have been provided with a set of network parameters
already trained. These are stored in '_ex3weights.mat_' and will be
loaded by _ex3 nn.m_ into Theta1 and Theta2. The parameters have dimensions
that are sized for a neural network with 25 units in the second layer and 10
output units (corresponding to the 10 digit classes).

After using neural network on handwritten digits domain, the success of my model is increased 97.5% .





