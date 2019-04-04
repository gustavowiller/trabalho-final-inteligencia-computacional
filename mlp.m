function [net tr] = mlp(X, D)
	net.trainParam.epochs=1000;
	net=newff([min(X')' max(X')'],[1 1],{'tansig','purelin'},'trainlm');
	net.trainParam.goal=1e-6;
	net.trainParam.mu = 0.1;
	[net tr] = train(net,X,D);

