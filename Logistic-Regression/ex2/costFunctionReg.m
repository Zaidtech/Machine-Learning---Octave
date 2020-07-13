function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

J = 1/m*sum([-y'*log(sigmoid(X*theta)) - (1-y)'*log(1 - sigmoid(X*theta))]) + lambda / (2*m)*(sum( theta(2:size(theta)).^2 )) ;

%theta_zeroed_first_element = [0; theta(2:length(theta))];
%grad = (1/m)*((sigmoid(X*theta)-y)'*X)' + (lambda / m)*theta_zeroed_first_element;

% =================================== 
% IMPROVED ACCURACY METHOD BELOW  :)

for i = 1:size(theta)
 if i == 1
  grad_1 = (1/m)*((sigmoid(X*theta)-y)'*X)' + 0;
 else
  grad_2 = (1/m)*((sigmoid(X*theta)-y)'*X)' + (lambda / m)*theta(i);
 endif
endfor
grad = (grad_1 + grad_2) / 2;


% =============================================================
end
