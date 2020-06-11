data {
    int<lower=0> N; //number of cases
    real<lower=0> nu;
    real mu[N];
    real<lower=0> sigma[N];
}

parameters {
    real y[N];
}

model {
    y ~ student_t(nu, mu, sigma);
}
