@assert assign_grade(100, [200,400]) == 1
@assert assign_grade(350, [200,400]) == 2
@assert assign_grade(900, [200,400]) == 3

@assert brier_score([0.1,0.2], [0.1,0.2]) == 0.0
@assert constraint_penalty([0.1,0.09,0.08,0.07,0.06,0.05,0.04,0.03],
                           [0.01,0.02,0.03,0.04,0.05,0.06,0.07,0.08]) == 0.0