function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
h = sigmoid(X*theta);
J_1 = [-log(h) -log(1-h)].*[y (1-y)];
theta_ = theta(2:end);
J_theta = lambda*(theta_'*theta_)/2/m
J = sum(sum(J_1))/m + J_theta;

grad_theta = lambda*theta/m;
grad_theta(1) = 0;
grad = ((h - y)'*X)'/m + grad_theta;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
