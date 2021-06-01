#Constantes
inicio = 50;
final = 100;
janela = 50;
amostrasDesconsideradas = 50;
fs = 500;

i = 1;
while (final < size(resultanteSentado, 1))
  r = my_fft(resultanteSentado(inicio:final, 1), fs);
  rfSentado(i,1) = r;
  r = my_fft(resultanteSentado(inicio:final, 2), fs);
  rfSentado(i,2) = r;
  inicio += janela;
  final += janela;
  i++;
endwhile

i = 1;
inicio = 50;
final = 100;
while (final < size(resultanteDeitado, 1))
  r = my_fft(resultanteDeitado(inicio:final, 1), fs);
  rfDeitado(i,1) = r;
  r = my_fft(resultanteDeitado(inicio:final, 2), fs);
  rfDeitado(i,2) = r;
  inicio += janela;
  final += janela;
  i++;
endwhile

i = 1;
inicio = 50;
final = 100;
while (final < size(resultanteAndando_1, 1))
  r = my_fft(resultanteAndando_1(inicio:final, 1), fs);
  rfAndando_1(i,1) = r;
  r = my_fft(resultanteAndando_1(inicio:final, 2), fs);
  rfAndando_1(i,2) = r;
  inicio += janela;
  final += janela;
  i++;
endwhile

i = 1;
inicio = 50;
final = 100;
while (final < size(resultanteAndando_2, 1))
  r = my_fft(resultanteAndando_2(inicio:final, 1), fs);
  rfAndando_2(i,1) = r;
  r = my_fft(resultanteAndando_2(inicio:final, 2), fs);
  rfAndando_2(i,2) = r;
  inicio += janela;
  final += janela;
  i++;
endwhile

i = 1;
inicio = 50;
final = 100;
while (final < size(resultantePulando, 1))
  r = my_fft(resultantePulando(inicio:final, 1), fs);
  rfPulando(i,1) = r;
  r = my_fft(resultantePulando(inicio:final, 2), fs);
  rfPulando(i,2) = r;
  inicio += janela;
  final += janela;
  i++;
endwhile

i = 1;
inicio = 50;
final = 100;
while (final < size(resultanteEscada, 1))
  r = my_fft(resultanteEscada(inicio:final, 1), fs);
  rfEscada(i,1) = r;
  r = my_fft(resultanteEscada(inicio:final, 2), fs);
  rfEscada(i,2) = r;
  inicio += janela;
  final += janela;
  i++;
endwhile

i = 1;
inicio = 50;
final = 100;
while (final < size(resultanteCair, 1))
  r = my_fft(resultanteCair(inicio:final, 1), fs);
  rfCair(i,1) = r;
  r = my_fft(resultanteCair(inicio:final, 2), fs);
  rfCair(i,2) = r;
  inicio += janela;
  final += janela;
  i++;
endwhile

