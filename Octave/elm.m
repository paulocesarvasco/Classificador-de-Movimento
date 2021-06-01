function [meanAc, stdAc, meanPr, stdPr] = elm(x, y, neuronios, bias)
  n_neuronios = [neuronios];
  Ck = [0]; #Fator de Ponderação
  
  Acuracia = zeros(50,1);
  Precisao = zeros(50,1);
  
  j = 1;

  while j <= 50
  
  #Shuffle rows
  I = randperm(size(x,1));
  x = x(I,:);
  y = y(I,:);
  
  x_t = x(1:round(size(x,1)*0.9),:);
  y_t = y(1:round(size(y,1)*0.9),:);

  #Validation data
  x_v = x(round(size(x,1)*0.9)+1:size(x,1),:);
  y_v = y(round(size(y,1)*0.9)+1:size(y,1),:);
    
  for a = 1:size(n_neuronios,2)
      
    n = n_neuronios(:,a); #numero de neuronios na camada intermediaria - variar este valor conforme os testes
    v = 2*rand(size(x_t,2), n) - 1; #Cada coluna da matriz v corresponde aos pesos de um neuronio n da camanda intermediaria (b, w1, w2, ... , wm)
    v = (v/1000);

    #Bias
    b = bias*randn(n,1);
    aux = v'*x_t' + b;
    H = tanh(aux);
      
    #Vetor de pesos do neuronio de saida resultante
    w = pinv(H')*y_t;
  endfor
    
  #Bias
  H = tanh(v'*x_v' + b);
  Y = w'*H;
    
  for i = 1:size(Y,2)
    if Y(i) > 0
      Y(i) = 1;
    else
      Y(i) = -1;
    endif
  endfor
    
  TP = TN = FP = FN = 0;
  for i = 1:size(Y,2)
    if Y(i) == y_v(i)
      if Y(i) >= 0
        TP++;
      else
        TN++;
      endif
    else
      if Y(i) > 0
        FP++;
      else
        FN++;
      endif
    endif
  endfor
    
  Acuracia(j,1) = (TP + TN)/(TP + TN + FP + FN);
      if TP > TN
        Precisao(j,1) = TP/(TP + FP);
      else
        Precisao(j,1) = TN/(TN + FN);
      endif
    j = j + 1;
  endwhile
  
  meanAc = mean(Acuracia);
  meanPr = mean(Precisao);  
  stdAc = std(Acuracia);
  stdPr = std(Precisao);
  
endfunction