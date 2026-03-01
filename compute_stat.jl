using Statistics

function grade_stats(grades, default; G=8)
    pop = [mean(grades .== g) for g in 1:G]
    pd  = [mean(default[grades .== g]) for g in 1:G]
    return pop, pd
end

pop, pd = grade_stats(grades, default)
pop, pd