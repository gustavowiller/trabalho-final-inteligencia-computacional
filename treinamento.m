function treinamento
	load('bd2.mat','bd');
	t = bd(1:901,:);
	X = t(1:900,:);
	D = t(2:901,1);


	NTrain = 5;
	Best_tperf = Inf;
	%for i = 1:NTrain
	%	[net tr] = mlp(X',D');
	%	tr.trperf(end)
	%	tr.trperf
	%	if tr.tperf(end) < Best_tperf
	%		Best_Net = net;
	%		Best_tr = tr;
	%	end
	%end
	%net = Best_Net;

	[net tr] = mlp(X',D');	
	save('treinamento.mat','net','X','D');
