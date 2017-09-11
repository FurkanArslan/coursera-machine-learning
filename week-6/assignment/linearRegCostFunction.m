function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%% ====================== cost function ======================
hypothesis = X * theta;

% Formula for not regularized cost function
NotRegularizedJ = (1/(2*m)) * sum(( hypothesis - y ).^2);

% Formula for regularized cost function. Note theta0 not involved in reglarization
theta0ExcludedTheta = theta(2:end);
J = NotRegularizedJ + (lambda / (2*m)) * sum(theta0ExcludedTheta.^2);

%% =============== Compute Cost and Gradient =================

% Formula for the gradient of the not regularized cost function
notRegularizedGrad =  + (1/m) .* (X' * ( hypothesis - y ));

temp = theta; 
temp(1) = 0;   % because we don't add anything for j = 0  

% Formula for the gradient of the regularized cost function
grad = notRegularizedGrad + ( (lambda/m) .* temp);

% =============================================================



grad = grad(:);

end
