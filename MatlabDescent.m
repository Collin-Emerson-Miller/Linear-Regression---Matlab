load Data

[X, X_norm, Y, N, M] = getData(data);

mdl = fitlm(X, Y);