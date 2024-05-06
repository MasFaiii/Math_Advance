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