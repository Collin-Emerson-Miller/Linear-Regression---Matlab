function [X, X_norm, Y, N, M] = getData(data)
    Y = data(:,1);
    X = data(:,2:end);
    X_norm = normc(X);
    N = size(X,1);
    M = size(X,2);