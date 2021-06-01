inicio = 50;
final = 100;

assimetriaAmostras = [0 0 0 0 0 0];
assimetriaDeitado = [0 0 0 0 0 0];

while (final < size(deitar, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(deitar(inicio:final, i));
  endfor
  assimetriaDeitado = [assimetriaDeitado ; assimetriaAmostras];
  inicio += 50;
  final += 50;
endwhile

assimetriaDeitado = assimetriaDeitado(2:size(assimetriaDeitado,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaAndando = [0 0 0 0 0 0];

while (final < size(andar, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(andar(inicio:final, i));
  endfor
  assimetriaAndando = [assimetriaAndando ; assimetriaAmostras];
  inicio += 50;
  final += 50;
endwhile

assimetriaAndando = assimetriaAndando(2:size(assimetriaAndando,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaPulando = [0 0 0 0 0 0];

while (final < size(pular, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(pular(inicio:final, i));
  endfor
  assimetriaPulando = [assimetriaPulando ; assimetriaAmostras];
  inicio += 50;
  final += 50;
endwhile

assimetriaPulando = assimetriaPulando(2:size(assimetriaPulando,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaSentado = [0 0 0 0 0 0];

while (final < size(sentar, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(sentar(inicio:final, i));
  endfor
  assimetriaSentado = [assimetriaSentado ; assimetriaAmostras];
  inicio += 50;
  final += 50;
endwhile

assimetriaSentado = assimetriaSentado(2:size(assimetriaSentado,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaEscada = [0 0 0 0 0 0];

while (final < size(escada, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(escada(inicio:final, i));
  endfor
  assimetriaEscada = [assimetriaEscada ; assimetriaAmostras];
  inicio += 50;
  final += 50;
endwhile

assimetriaEscada = assimetriaEscada(2:size(assimetriaEscada,1),:);

inicio = 50;
final = 100;
assimetriaAmostras = [0 0 0 0 0 0];
assimetriaCair = [0 0 0 0 0 0];

while (final < size(cair, 1))
  for i = 1:6
    assimetriaAmostras(:, i) = skewness(cair(inicio:final, i))
  endfor
  assimetriaCair = [assimetriaCair ; assimetriaAmostras];
  inicio += 50;
  final += 50;
endwhile

assimetriaCair = assimetriaCair(2:size(assimetriaCair,1),:);
clear assimetriaAmostras