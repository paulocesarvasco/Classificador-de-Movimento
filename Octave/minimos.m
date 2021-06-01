function [meanAc, stdAc, meanPr, stdPr] = minimos (phi, y)

  Acuracia = zeros(100,1);
  Precisao = zeros(100,1);
  j = 1;
  while j <= 100
    #Training data
    
    #Shuffle phi rows
    I = randperm(size(phi, 1));
    phi = phi(I , :);
    y = y(I , :);
    
    phi_t = phi(1:round(size(phi,1)*0.9),:);
    y_t = y(1:round(size(y,1)*0.9),:);

    #Validation data
    phi_v = phi(round(size(phi,1)*0.9)+1:size(phi,1),:);
    y_v = y(round(size(y,1)*0.9)+1:size(y,1),:);
    
    w = inv((phi_t.' * phi_t)) * phi_t.' * y_t;
    Y = phi_v * w;

    for i = 1:size(Y,1)
      if Y(i) < 0
        Y(i) = -1;
      else
        Y(i) = 1;
      endif
    endfor

    #Metricas de qualidade do moledo
    TP = 0;
    FP = 0;
    TN = 0;
    FN = 0;

    for i = 1:size(Y,1)
      if Y(i) == y_v(i)
        if Y(i) >= 0
          TP++;
        else
          TN++;
        endif
      else
        if Y(i) >= 0
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