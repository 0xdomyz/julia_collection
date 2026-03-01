trial = [150, 300, 450, 600, 700, 820, 900]
loss(trial, scores, default)

# check
grades = [assign_grade(s, trial) for s in scores]
pop, pd = grade_stats(grades, default)
pd

# visual
using Plots
plot(1:8, pd, marker=:circle, xlabel="Grade", ylabel="Observed PD")