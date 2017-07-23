function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%C = 1;
%sigma = 0.3;

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
tmp = zeros(8,1);
tmp(1) = .01;
for i=2:4,
tmp(i) = tmp(i-1)*10;
end

tmp(5) = .03;
for i=6:8;
    tmp(i) = tmp(i-1)*10;
end

posib = size(tmp,1)^2;

posibmat = zeros(posib,2);
for i=1:size(posib,1),
    for j=1:size(tmp,1),
        k=1;
        while k<=size(tmp,1),
            posibmat(i,:) = [tmp(j) tmp(k)];
            k=k+1;
            i=i+1;
        end
    end
end

error = zeros(posib,1);
q=1;
while q<=size(posibmat,1),
C = posibmat(q,1);
sigma = posibmat(q,2);
[model] = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
predictions = svmPredict(model, Xval);
error(q,1) = mean(double(predictions ~= yval));
q=q+1;
end

[M I]=min(error);
C = posibmat(I,1);
sigma = posibmat(I, 2);

% =========================================================================

end
