function GA(target,population_size,mutation_rate)

%menginisialisasi populasi
population = create_population(target,population_size);

islooping = true;
generation = 0;
while islooping
    %evaluation
    islooping = evaluation(population);
    %display
    logging (population,target,generation);
    %selection
    [parent1,parent2] = selection(population);
    %crossover
    [child1,child2] = crossover(parent1,paremt2);
    %mutation
    mutant1 = mutation(child1,mutation_rate);
    mutant2 = mutation(child2,mutation_rate);
    %Hitung fitnes mutant
    mutant1.fitnes = calculate_fitnes(mutant1.genes,target);
    mutant2.fitnes = calculate_fitnes(mutant2.genes,target);
    %membuat new generation
    children = [mutant1 mutant2];
    population = regeneration(children,population);
    generation = generation + 1;
end
end