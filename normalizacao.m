function normalizacao
	bd=load('baseDados.csv');
	bd = mapminmax(bd);
	save('bd2.mat','bd'); 
