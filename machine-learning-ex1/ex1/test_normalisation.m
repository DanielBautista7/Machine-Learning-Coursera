X = [1 2 3;4 5 6; 7 8 9]


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
m = size(X,1)
n = size(X,2)
%mu = sum(X_norm)/m
%for i = 1:n
%	X_norm(:,i) = X_norm(:,i)-mu(i)
%end
%var_X = (X_norm'*X_norm)/(m-1)
%std_X = sqrt(sum(var_X .* eye(n)))
%std_X(std_X==0)=1.
%for i = 1:n
%	if std_X[i] > 1e-10
%		X_norm(:,i) = X_norm(:,i)/std_X(i)
%	end
%end
mu = mean(X)
X_norm = X_norm .- repmat(mean(X),m,1)
sigma = std(X)
X_norm = X_norm ./ repmat(sigma,m,1)

%disp('X:')
%disp(X)
%disp('mu:')
%disp(mu)
%disp('std:')
%disp(std_X)
