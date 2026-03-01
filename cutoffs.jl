# cutoffs must be sorted
cutoffs = [200, 350, 500, 600, 700, 800, 900]

function assign_grade(score, cutoffs)
    for (i, c) in enumerate(cutoffs)
        score < c && return i
    end
    return length(cutoffs) + 1
end

grades = [assign_grade(s, cutoffs) for s in scores]