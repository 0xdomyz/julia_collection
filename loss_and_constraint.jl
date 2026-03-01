# Brier score = mean((observed - predicted)^2)
function brier_score(pd_obs, pd_pred)
    return mean((pd_obs .- pd_pred).^2)
end

# Use grade-level PDs as prediction
brier_score(pd, pd)


function constraint_penalty(pop, pd)
    penalty = 0.0

    # Minimum population in best grade (5%)
    penalty += max(0, 0.05 - pop[1]) * 100

    # Pyramid shape: pop[g] > pop[g+1]
    for g in 1:7
        penalty += max(0, pop[g+1] - pop[g]) * 50
    end

    # Monotonic PD: pd[g] < pd[g+1]
    for g in 1:7
        penalty += max(0, pd[g] - pd[g+1]) * 200
    end

    return penalty
end

constraint_penalty(pop, pd)

function loss(cutoffs, scores, default)
    grades = [assign_grade(s, cutoffs) for s in scores]
    pop, pd = grade_stats(grades, default)
    cal = brier_score(pd, pd)
    pen = constraint_penalty(pop, pd)
    return cal + pen
end

loss(cutoffs, scores, default)