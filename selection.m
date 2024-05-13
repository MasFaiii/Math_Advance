function [parent1, parent2] = selection(population)

fitnes = zeros (1,length(population));
for i=1:length(population)
    fitnes(i) = population(i).fitnes;
end

[~,index] = max(fitnes);
parent1 = population(index);

population(index)= [];
fitnes(index) = [];

[~,index] = max(fitnes);
parent2 = population(index);