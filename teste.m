function teste
	load('bd2.mat','bd');
	t = bd(902:1162,:);

	X = t(1:259,:);
	D = t(2:260,1)';

	load('treinamento.mat','net');
	load('treinamentofuzzy','out_fis');

	Z = sim(net,X');
	Z_fuzzy = evalfis(X,out_fis)';

	save('teste.mat','Z','Z_fuzzy','D');
	%plot(Z-D);
