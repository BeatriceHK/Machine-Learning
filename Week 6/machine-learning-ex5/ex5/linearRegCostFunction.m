function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
hx = X*theta;

% You need to return the following variables correctly 
J = sum((hx-y).^2)/(2*m) + lambda/(2*m)*sum(theta(2:end,1).^2);
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

grad(1,1) = sum((hx-y).*X(:,1))/m;
nn = size(theta);
for j=2:nn(1)
grad(j,1) = sum((hx-y).*X(:,j))/m + lambda/m*theta(j,1);
end 







% =========================================================================

grad = grad(:);

end
