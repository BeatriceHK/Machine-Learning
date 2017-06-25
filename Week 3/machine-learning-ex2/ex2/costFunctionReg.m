function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
nn = size(X);
hx = sigmoid(X*theta);

% You need to return the following variables correctly 
J = -sum(y.*log(hx)+(1-y).*log(1-hx))/m + lambda/(2*m)*sum(theta(2:end,1).^2);
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
grad(1,1) = sum((hx-y).*X(:,1))/m;
for j=2:nn(2)
grad(j,1) = sum((hx-y).*X(:,j))/m + lambda/m*theta(j);
end 




% =============================================================

end
