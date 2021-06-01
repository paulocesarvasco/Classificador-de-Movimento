 #Constantes
resultanteAndando = [0 0];
i = 1;
while (i < size(andar, 1))
  resultanteAndando(i, 1) = sqrt(andar(i,1)**2 + andar(i,2)**2 + andar(i,3)**2);
  resultanteAndando(i, 2) = sqrt(andar(i,4)**2 + andar(i,5)**2 + andar(i,6)**2);
  i++;
endwhile

resultanteAndando = resultanteAndando(2:size(resultanteAndando,1),:);

resultanteDeitado = [0 0];
i = 1;
while (i < size(deitar, 1))
  resultanteDeitado(i, 1) = sqrt(deitar(i,1)**2 + deitar(i,2)**2 + deitar(i,3)**2);
  resultanteDeitado(i, 2) = sqrt(deitar(i,4)**2 + deitar(i,5)**2 + deitar(i,6)**2);
  i++;
endwhile

resultanteDeitado = resultanteDeitado(2:size(resultanteDeitado,1),:);

resultanteSentado = [0 0];
i = 1;
while (i < size(deitar, 1))
  resultanteSentado(i, 1) = sqrt(deitar(i,1)**2 + deitar(i,2)**2 + deitar(i,3)**2);
  resultanteSentado(i, 2) = sqrt(deitar(i,4)**2 + deitar(i,5)**2 + deitar(i,6)**2);
  i++;
endwhile

resultanteSentado = resultanteSentado(2:size(resultanteSentado,1),:);

resultantePulando = [0 0];
i = 1;
while (i < size(pular, 1))
  resultantePulando(i, 1) = sqrt(pular(i,1)**2 + pular(i,2)**2 + pular(i,3)**2);
  resultantePulando(i, 2) = sqrt(pular(i,4)**2 + pular(i,5)**2 + pular(i,6)**2);
  i++;
endwhile

resultantePulando = resultantePulando(2:size(resultantePulando,1),:);

resultanteEscada = [0 0];
i = 1;
while (i < size(escada, 1))
  resultanteEscada(i, 1) = sqrt(escada(i,1)**2 + escada(i,2)**2 + escada(i,3)**2);
  resultanteEscada(i, 2) = sqrt(escada(i,4)**2 + escada(i,5)**2 + escada(i,6)**2);
  i++;
endwhile

resultanteEscada = resultanteEscada(2:size(resultanteEscada,1),:);

resultanteCair = [0 0];
i = 1;
while (i < size(cair, 1))
  resultanteCair(i, 1) = sqrt(cair(i,1)**2 + cair(i,2)**2 + cair(i,3)**2);
  resultanteCair(i, 2) = sqrt(cair(i,4)**2 + cair(i,5)**2 + cair(i,6)**2);
  i++;
endwhile

resultanteCair = resultanteCair(2:size(resultanteCair,1),:);

clear i