function logging(population,target,generation)
clc 
proses = selection (population);
fprint('target : %s \n',target);
fprint('proses : %s \n,proses.genes');
fprint('\n');
fprint('generation: %d \n', generation);
fprint('\n');

for i=1:length(population)
    fprint('genes: %s',population(i).genes);
    fprint('Fitnes: %.2f',population(i).fitnes);
    fprint('\n');
end

