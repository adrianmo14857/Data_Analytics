data {
  int M;//number of years analyzed
  vector[M] dr; //number of miles flown each year
  int y[M];//number of fatal accidents
}
parameters {
  real<lower=0>theta;
}
model {
  theta ~ normal(5115,2034);
  for (k in 1:M) {
    y[k] ~ poisson(dr[k]*theta);
  }
}
generated quantities {
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(dr[k]*theta);
  }
}
