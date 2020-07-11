function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pos = find(y==1);
% To get the indices of all the positive values
neg = find(y==0);
% To get the indices of all the negative values 
plot(X(pos,1), X(pos, 2), 'b+')
hold on ;
% to plot all the positive i.e marks of all the students who got admission
plot(X(neg,1), X(neg, 2), 'ro')
% to plot all the positive i.e marks of all the students who do not admission
% =========================================================================

hold off;

end
