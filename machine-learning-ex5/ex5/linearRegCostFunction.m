function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = theta'*X';
dy = (h' - y).^2;
J = sum(dy)/2/m;
J = J + lambda/2/m*sum(theta(2:end).^2);
size(y);
size(X);
size(theta);
%a = sum(X.*repmat(dy_,1,size(X,2)))
%size(a)
hold on;
%grad = sum(X.*repmat(h' - y,1,size(X,2)))'/m;
grad = X.*repmat(h' - y,1,size(X,2));
if m != 1
	grad = sum(grad);
end
grad = grad'/m;
grad(2:end) = grad(2:end) + lambda/m*theta(2:end); 











% =========================================================================

grad = grad(:);

end
