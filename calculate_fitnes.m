function fitnes = calculate_fitnes(genes,target)
fitnes = 100*sum(target == genes)/length(target);
end