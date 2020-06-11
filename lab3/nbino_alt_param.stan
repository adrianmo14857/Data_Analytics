data {
    real<lower=0> mu;
    real<lower=0> phi;
}


generated quantities {
    int<lower=0> y;
    y = neg_binomial_2_rng(mu,phi);
}
