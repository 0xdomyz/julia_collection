best_cut = cutoffs
best_loss = loss(best_cut, scores, default)

for iter in 1:200
    # random jitter of cutoffs
    trial = best_cut .+ randn(7) .* 10
    trial = sort(trial)

    L = loss(trial, scores, default)
    if L < best_loss
        best_loss = L
        best_cut = trial
    end
end

best_cut, best_loss