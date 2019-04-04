function treinamentofuzzy
	load('bd2.mat','bd');
	t = bd(1:901,:);
	X = t(1:900,:);
	D = t(2:901,1);

	%X = X';
	%D = D';


	epoch_n = 20;
	in_fis  = genfis2(X, D,.3);
	out_fis = anfis([X D],in_fis,epoch_n);

	save('treinamentofuzzy.mat','out_fis','X','D');
