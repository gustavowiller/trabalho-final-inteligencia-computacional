% inputs_Train são as amostras de treinamento, validação e teste previamente fornecidas; 
% targets_Train as saídas desejadas correspondentes; 
% nhidden o número de neurônios na camada escondida;
% { } as funções de ativação default (tansig na camada escondida e purelin na de saída);
%’trainbr’ o algoritmo Bayesian Regularization;
function createNeuralNetwork
	net = newff(inputs_Train,targets_Train,nhidden,{},’trainbr’); % 
