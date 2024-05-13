clc
clear

target = 'Mas Fai Jawir';
len = length(target);
% random_number = randi([32,126],1,panjang);
% genes = char (random_number);
% genes
genes = create_genes(len)

%fitnes
fitnes = calculate_fitnes(genes,target)

%populasi
population_size = 10;
population = create_population(target,population_size)

%selection
[parent1,parent2] = selection (population)

%crossover
[child1,child2] = crossover(parent1,parent2)

%mutation
mutation_rate = 0.5;
mutant1 = mutation(child1,mutation_rate)
mutant2 = mutation(child2,mutation_rate)