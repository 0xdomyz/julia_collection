struct HomogModel
    shift::Float64
end

struct HeterogModel
    shift::Float64
    noise::Float64
end

pd_model(m::HomogModel, s) = logistic((s - 500 + m.shift) / 120)
pd_model(m::HeterogModel, s) = logistic((s - 500 + m.shift + randn()*m.noise) / 120)

m1 = HomogModel(0)
m2 = HeterogModel(0, 30)

pd_model(m1, 600), pd_model(m2, 600)