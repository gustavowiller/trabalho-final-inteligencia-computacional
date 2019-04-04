function analise
	load('teste.mat','Z','Z_fuzzy','D');
	%plot(-[D;Z_fuzzy]')
	%legend('Real','Rede Fuzzy')
	

	disp('Erro - Rede Neural')
	sum(abs(D-Z))
	disp('Erro - Rede Fuzzy')
	sum(abs(D-Z_fuzzy))


	plot([abs(D-Z);abs(D-Z_fuzzy)]')
	legend('Rede MLP','Rede Fuzzy')