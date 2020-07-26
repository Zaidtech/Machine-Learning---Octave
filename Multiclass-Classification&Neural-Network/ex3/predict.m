function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
% num_labels = 26*1
% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);
% p is m*1

%X = [ones(m,1), X];

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% a1 is the input layer 

%active = zeros(5000,10);

 %  z1 = Theta1*(X(i,:))';
 %  a2 = sigmoid(z1);
 %  a2 = [1;a2];
 %  z2 = Theta2*a2;
 %  a3 = sigmoid(sigmoid(z2));
 %  active(i,:) = a3';
   %[max_value, p] = max(H, [], 2);
  % endfor

% =========================================================================
 %[max_value, p] = max(active, [], 2);


%=============================

% OTHER METHOD

a1 = [ones(m,1), X];
a2 = [ones(m,1), sigmoid(a1 * Theta1')];
a3 = sigmoid(a2 * Theta2');

h = sigmoid(a3);

[max_value, p] = max(h, [], 2);


end
