using Distributions, HypothesisTests

x = rand(Normal(0,1), 200)
y = rand(Normal(0.2,1), 200)

ks = ApproximateTwoSampleKSTest(x, y)
pvalue(ks)