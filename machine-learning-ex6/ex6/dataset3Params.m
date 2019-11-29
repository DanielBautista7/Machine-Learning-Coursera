function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C_best = 0;
sigma_best = 0;
grid = [0.01, 0.03, 0.1, 0.3, 1, 3, 10,30];
accuracy_max = 0;
for i = 1:length(grid),
	C_cur = grid(i);
	for j = 1:length(grid),
		sigma_cur = grid(j);
		model = svmTrain(X, y, C_cur, @(x1, x2) gaussianKernel(x1, x2, sigma_cur));
		predictions = svmPredict(model, Xval);
		accuracy = mean(double(predictions == yval));
		if accuracy > accuracy_max
			accuracy_max = accuracy;
			C_best = C_cur;
			sigma_best = sigma_cur;
		end
	end
end
C = C_best;
sigma = sigma_best;
% =========================================================================

end
