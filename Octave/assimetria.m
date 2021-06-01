#Constantes
inicio = 50;
final = 100;
janela = 50;
amostrasDesconsideradas = 100;

assimetriaAmostras = [0 0 0 0 0 0];
assimetriaAndando_1 = [0 0 0 0 0 0];

while (final < size(andandoNormalizado_1, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(andandoNormalizado_1(inicio:final, i), 1);
  endfor
  assimetriaAndando_1 = [assimetriaAndando_1; assimetriaAmostras];
  inicio += janela;
  final += janela;
endwhile

assimetriaAndando_1 = assimetriaAndando_1(2:size(assimetriaAndando_1,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaAndando_2 = [0 0 0 0 0 0];

while (final < size(andandoNormalizado_2, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(andandoNormalizado_2(inicio:final, i), 1);
  endfor
  assimetriaAndando_2 = [assimetriaAndando_2; assimetriaAmostras];
  inicio += janela;
  final += janela;
endwhile

assimetriaAndando_2 = assimetriaAndando_2(2:size(assimetriaAndando_2,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaDeitado = [0 0 0 0 0 0];

while (final < size(deitadoNormalizado, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(deitadoNormalizado(inicio:final, i), 1);
  endfor
  assimetriaDeitado = [assimetriaDeitado; assimetriaAmostras];
  inicio += janela;
  final += janela;
endwhile

assimetriaDeitado = assimetriaDeitado(2:size(assimetriaDeitado,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaEscada = [0 0 0 0 0 0];

while (final < size(escadaNormalizado, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(escadaNormalizado(inicio:final, i), 1);
  endfor
  assimetriaEscada = [assimetriaEscada; assimetriaAmostras];
  inicio += janela;
  final += janela;
endwhile

assimetriaEscada = assimetriaEscada(2:size(assimetriaEscada,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaPulando = [0 0 0 0 0 0];

while (final < size(pulandoNormalizado, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(pulandoNormalizado(inicio:final, i), 1);
  endfor
  assimetriaPulando = [assimetriaPulando; assimetriaAmostras];
  inicio += janela;
  final += janela;
endwhile

assimetriaPulando = assimetriaPulando(2:size(assimetriaPulando,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaSentado = [0 0 0 0 0 0];

while (final < size(sentadoNormalizado, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(sentadoNormalizado(inicio:final, i), 1);
  endfor
  assimetriaSentado = [assimetriaSentado; assimetriaAmostras];
  inicio += janela;
  final += janela;
endwhile

assimetriaSentado = assimetriaSentado(2:size(assimetriaSentado,1),:);
clear assimetriaAmostras;