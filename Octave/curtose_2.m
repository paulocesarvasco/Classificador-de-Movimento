inicio = 50;
final = 100;

curtoseAmostras = [0 0 0 0 0 0];
curtoseDeitado = [0 0 0 0 0 0];

while (final < size(deitar, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(deitar(inicio:final, i));
  endfor
  curtoseDeitado = [curtoseDeitado ; curtoseAmostras];
  inicio += 50;
  final += 50;
endwhile

curtoseDeitado = curtoseDeitado(2:size(curtoseDeitado,1),:);

inicio = 50;
final = 100;
curtoseAmostras = [0 0 0 0 0 0];
curtoseAndando = [0 0 0 0 0 0];

while (final < size(andar, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(andar(inicio:final, i));
  endfor
  curtoseAndando = [curtoseAndando ; curtoseAmostras];
  inicio += 50;
  final += 50;
endwhile

curtoseAndando = curtoseAndando(2:size(curtoseAndando,1),:);

inicio = 50;
final = 100;
curtoseAmostras = [0 0 0 0 0 0];
curtosePulando = [0 0 0 0 0 0];

while (final < size(pular, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(pular(inicio:final, i));
  endfor
  curtosePulando = [curtosePulando ; curtoseAmostras];
  inicio += 50;
  final += 50;
endwhile

curtosePulando = curtosePulando(2:size(curtosePulando,1),:);

inicio = 50;
final = 100;
curtoseAmostras = [0 0 0 0 0 0];
curtoseSentado = [0 0 0 0 0 0];

while (final < size(sentar, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(sentar(inicio:final, i));
  endfor
  curtoseSentado = [curtoseSentado ; curtoseAmostras];
  inicio += 50;
  final += 50;
endwhile

curtoseSentado = curtoseSentado(2:size(curtoseSentado,1),:);

inicio = 50;
final = 100;
curtoseAmostras = [0 0 0 0 0 0];
curtoseEscada = [0 0 0 0 0 0];

while (final < size(escada, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(escada(inicio:final, i));
  endfor
  curtoseEscada = [curtoseEscada ; curtoseAmostras];
  inicio += 50;
  final += 50;
endwhile

curtoseEscada = curtoseEscada(2:size(curtoseEscada,1),:);

inicio = 50;
final = 100;
curtoseAmostras = [0 0 0 0 0 0];
curtoseCair = [0 0 0 0 0 0];

while (final < size(cair, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(cair(inicio:final, i))
  endfor
  curtoseCair = [curtoseCair ; curtoseAmostras];
  inicio += 50;
  final += 50;
endwhile

curtoseCair = curtoseCair(2:size(curtoseCair,1),:);
clear curtoseAmostras