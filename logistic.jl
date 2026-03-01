# Logistic PD from a linear score
logistic(x) = 1 / (1 + exp(-x))

# Example: convert score to PD
pd = logistic.( (scores .- 500) / 100 )   # broadcasting
pd