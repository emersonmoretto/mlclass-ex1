function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

soma = 0;
tmp = 0;

%modo lerdo
%for i=1:m, 
%	% Igual da formula: x(i) * theta - y(i)
%	soma = soma + (X(i,:) * theta - y(i))^2;
%end

%J = soma/(2*m);

%Modo express!!
hipoteses = X * theta;
desviopadrao = (hipoteses - y).^2;
J = 1 / (2*m) * sum(desviopadrao);

%sprintf("Theta %0.2f -> J %0.2f",theta(1),J)

% =========================================================================

end
