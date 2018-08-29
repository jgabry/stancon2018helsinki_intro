functions {
  /*
  * Alternative to poisson_log_rng() that 
  * avoids potential numerical problems during warmup
  */
  int poisson_log_safe_rng(real eta) {
    real pois_rate = exp(eta);
    if (pois_rate >= exp(20.79))
      return -9;
    return poisson_rng(pois_rate);
  }
}
data {

}
parameters {

}
model {
  // weakly informative priors:
  // we expect negative slope on traps and a positive intercept,
  // but we will allow ourselves to be wrong
  
  // poisson_log(eta) is more efficient and stable alternative to poisson(exp(eta))
} 
generated quantities {
  // use poisson_log_safe_rng
  
}
