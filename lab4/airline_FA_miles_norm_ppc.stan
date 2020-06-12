data {
  int M;//number of years analyzed
  vector[M] dr; //number of miles flown each year
}


generated quantities {
  real theta=normal_rng(5115,2034);
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(theta*dr[k]);
  }
}
