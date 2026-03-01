using Random
Random.seed!(123)

N = 2000
scores = rand(0:1000, N)                     # uniform synthetic scores
true_pd = logistic.((scores .- 500) / 120)   # smooth mdl curve
default = rand.(Bernoulli.(true_pd))         # simulated targets