fs = 500;
F = [0 0 0 0 0 0];

resultanteAceleracao = sqrt(andandoNormalizado_1(:,1).**2 + andandoNormalizado_1(:,2).**2 + andandoNormalizado_1(:,3).**2);
resultanteVelocidade = sqrt(andandoNormalizado_1(:,4).**2 + andandoNormalizado_1(:,5).**2 + andandoNormalizado_1(:,6).**2);

fftAndando_1_aceleracao, F = my_fft(resultanteAceleracao, fs);
fftAndando_1_velocidade, F = my_fft(resultanteVelocidade, fs);