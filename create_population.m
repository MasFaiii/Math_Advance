function population = create_population (target,population_size)

population = struct.empty (population_size, 0);
for i=1:population_size
    genes = create_genes (length(target));
    fitnes = calculate_fitnes(genes,target);
    population(i).genes = genes;
    population(i).fitnes = fitnes;
end
