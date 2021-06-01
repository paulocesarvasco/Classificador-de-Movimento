figure(1)
hold on

subplot(3,2,1)
N_amostras = (1:1:size(resultanteAndando,1))';
plot(N_amostras,resultanteAndando(:,1))
title('Variação da aceleração durante o movimento "ANDAR"')

subplot(3,2,2)
N_amostras = (1:1:size(resultanteAndando,1))';
plot(N_amostras,resultanteAndando(:,2))
title('Variação da valocidade angular durante o movimento "ANDAR"')

subplot(3,2,3)
N_amostras = (1:1:size(resultanteDeitado,1))';
plot(N_amostras,resultanteDeitado(:,1))
title('Variação da aceleração durante o movimento "DEITAR"')

subplot(3,2,4)
N_amostras = (1:1:size(resultanteDeitado,1))';
plot(N_amostras,resultanteDeitado(:,2))
title('Variação da varaiação angular durante o movimento "DEITAR"')

subplot(3,2,5)
N_amostras = (1:1:size(resultanteEscada,1))';
plot(N_amostras,resultanteEscada(:,1))
title('Variação da aceleração durante o movimento "ESCADA"')

subplot(3,2,6)
N_amostras = (1:1:size(resultanteEscada,1))';
plot(N_amostras,resultanteEscada(:,2))
title('Variação da velocidade angular durante o movimento "ESCADA"')

figure(2)
hold on

subplot(3,2,1)
N_amostras = (1:1:size(resultanteSentado,1))';
plot(N_amostras,resultanteSentado(:,1))
title('Variação da velocidade angular durante o movimento "SENTAR"')

subplot(3,2,2)
N_amostras = (1:1:size(resultanteSentado,1))';
plot(N_amostras,resultanteSentado(:,2))
title('Variação da aceleração durante o movimento "SENTAR"')

subplot(3,2,3)
N_amostras = (1:1:size(resultantePulando,1))';
plot(N_amostras,resultantePulando(:,1))
title('Variação da aceleração durante o movimento "PULAR"')

subplot(3,2,4)
N_amostras = (1:1:size(resultantePulando,1))';
plot(N_amostras,resultantePulando(:,2))
title('Variação da velocidade angular durante o movimento "PULAR"')

figure(3)
hold on
subplot(2,1,1)
N_amostras = (1:1:size(resultanteCair,1))';
plot(N_amostras,resultanteCair(:,1))
title('Variação da aceleração durante o movimento "CAIR"')

subplot(2,1,2)
N_amostras = (1:1:size(resultanteCair,1))';
plot(N_amostras,resultanteCair(:,2))
title('Variação da velocidade angular durante o movimento "CAIR"')

