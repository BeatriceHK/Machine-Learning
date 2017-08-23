M = csvread('3cluster1.dat');
M(:,3) = M(:,3)+1;

% bad initialization
Mcentroids = kMeansInitCentroids(M, K);
[centroids, idx] = runkMeans(M, Mcentroids, max_iters, true);


% good initialization
initial_centroids1 = [.9 -.4 1; .9 .4 1; -.8 0 2];
[centroids, idx] = runkMeans(M, initial_centroids1, max_iters, true);