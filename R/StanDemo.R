hello.stan <- "data {
  int<lower=0> N;
  vector[N] y;
}
parameters {
  real mu;
  real<lower=0> sigma;
}
model {
  y ~ normal(mu, sigma);
}
"

N <- 100
y <- rnorm(N, mean = 5, sd = 10)
stanfit <- stan(model_name = hello.stan, data = list(N, y))