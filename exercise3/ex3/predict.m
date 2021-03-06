function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

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


%First we add a column of 1s to X to get a1
a1 = [ones(m, 1) X];

%Now we multiply a1 by theta1 to get z2
z2 = a1 * Theta1';

%Take the sigmoid and add the column of 1s to z2 to get a2
a2 = [ones(m, 1) sigmoid(z2)];

%Now we multiply a2 by theta2 to get z3
z3 = a2 * Theta2';

%Take the sigmoid to get a3, which is also our hypothesis. This will by an
%mx10 matrix since we have 10 classifiers
a3 = sigmoid(z3);

%Transpose a3 to help taking the max indices of the hypothesis
[test,I] = max(a3');

%Output predictions
p = I;






% =========================================================================


end
