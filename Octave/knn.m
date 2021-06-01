function [meanAc, stdAc, meanPr, stdPr] = knn(x, y, k)
  
  for j = 1:10
  
    #Shuffle rows
    I = randperm(size(x,1));
    x = x(I,:);
    y = y(I,:);
 
    #Training data
    x_t = x(1:round(size(x,1)*0.9),:);
    y_t = y(1:round(size(y,1)*0.9),:);

    #Validation data
    x_v = x(round(size(x,1)*0.9)+1:size(x,1),:);
    y_v = y(round(size(y,1)*0.9)+1:size(y,1),:);
  
    i = 1;
    label = zeros(size(x_v, 1), 1);
  
    while i <= size(x_v, 1)
      Y(i) = dist(x_t, y_t, x_v(i,:),k);
      i = i + 1;
    endwhile
  
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
  
    Acuracia(j) = (TP + TN)/(TP + TN + FP + FN);

    if TP + FP == 0
      Precisao(j) = 0;
    else
      if TP > TN
        Precisao(j) = TP/(TP + FP);
      else
        Precisao(j) = TN/(TN + FN);
      endif
    endif

  endfor
  
  meanAc = mean(Acuracia);
  meanPr = mean(Precisao);  
  stdAc = std(Acuracia);
  stdPr = std(Precisao);
endfunction