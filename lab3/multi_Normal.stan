data {
    int<lower=0> K;
    vector[K] mu; //location vector
    matrix[K,K] Sigma; //covariance matrix
}

parameters {
    vector[K] y;
}

model {
    y ~ multi_normal(mu, Sigma);
}
