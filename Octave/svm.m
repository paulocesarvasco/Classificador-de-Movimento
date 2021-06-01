function [meanAc, stdAc, meanPr, stdPr] = svm(x, y)
  
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
    
    model = svmtrain(y_t, x_t, '-g 0.000002');
    Y = svmpredict(y_v, x_v, model);

    TP = TN = FP = FN = 0;

    for i = 1:size(Y,1)
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

    if TP > TN
      Precisao(j) = TP/(TP + FP);
    else
      Precisao(j) = TN/(TN + FN);
    endif

  endfor
  
  meanAc = mean(Acuracia);
  meanPr = mean(Precisao);  
  stdAc = std(Acuracia);
  stdPr = std(Precisao);
endfunction