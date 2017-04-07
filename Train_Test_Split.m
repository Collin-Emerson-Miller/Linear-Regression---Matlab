function [ X_train, y_train, X_test, y_test ] = Train_Test_Split( X, y, percent )
%splits X and Y data into train and test validations sets.

assert (size(X,1) == size(y,1));

split = int64(size(X,1) * (1-percent));

X_train = X(1:split,:);
X_test = X(split:end,:);
y_train = y(1:split,:);
y_test = y(split:end,:);

end

