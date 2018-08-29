functions {
  /*
  * Alternative to neg_binomial_2_log_rng() that 
  * avoids potential numerical problems during warmup
  */
  int neg_binomial_2_log_safe_rng(real eta, real phi) {
    real gamma_rate = gamma_rng(phi, phi / exp(eta));
    if (gamma_rate >= exp(20.79))
      return -9;
      
    return poisson_rng(gamma_rate);
  }
}
data {
  int<lower=1> N;
  vector<lower=0>[N] traps;
  int<lower=0> complaints[N];
  
  
}
parameters {
  real alpha;
  real beta;
  real beta_super;

}
transformed parameters {
  
}
model {
  alpha ~ normal(log(4), 1);
  beta ~ normal(-0.25, 1);
  beta_super ~ normal(-0.5, 1);
  
  
} 
generated quantities {
  // use neg_binomial_2_log_safe_rng
  
}

