clc;clear;

%Import Data
load Data

[X, X_norm, Y, N, M] = getData(data);

[X_train, y_train, X_test, y_test] = Train_Test_Split(X_norm, Y, 0.3);

%Initialize Parameters
W = randn(M, 1);
alpha = 1;
iterations = 500;

%Run Gradient Descent
[J_hist, W] = GradientDescent(X_train, W, alpha, iterations, y_train);

%Plot Loss
plot(J_hist);
title('Loss')
xlabel('Iterations');
ylabel('Error');

predictions = predict(X_test, W);

errors = y_test - predictions;

histogram(errors);

