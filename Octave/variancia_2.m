inicio = 50;
final = 100;

varianciaAmostras = [0 0 0 0 0 0];
varianciaDeitado = [0 0 0 0 0 0];

while (final < size(deitar, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(deitar(inicio:final, i));
  endfor
  varianciaDeitado = [varianciaDeitado ; varianciaAmostras];
  inicio += 50;
  final += 50;
endwhile

varianciaDeitado = varianciaDeitado(2:size(varianciaDeitado,1),:);

inicio = 50;
final = 100;
varianciaAmostras = [0 0 0 0 0 0];
varianciaAndando = [0 0 0 0 0 0];

while (final < size(andar, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(andar(inicio:final, i));
  endfor
  varianciaAndando = [varianciaAndando ; varianciaAmostras];
  inicio += 50;
  final += 50;
endwhile

varianciaAndando = varianciaAndando(2:size(varianciaAndando,1),:);

inicio = 50;
final = 100;
varianciaAmostras = [0 0 0 0 0 0];
varianciaPulando = [0 0 0 0 0 0];

while (final < size(pular, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(pular(inicio:final, i));
  endfor
  varianciaPulando = [varianciaPulando ; varianciaAmostras];
  inicio += 50;
  final += 50;
endwhile

varianciaPulando = varianciaPulando(2:size(varianciaPulando,1),:);

inicio = 50;
final = 100;
varianciaAmostras = [0 0 0 0 0 0];
varianciaSentado = [0 0 0 0 0 0];

while (final < size(sentar, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(sentar(inicio:final, i));
  endfor
  varianciaSentado = [varianciaSentado ; varianciaAmostras];
  inicio += 50;
  final += 50;
endwhile

varianciaSentado = varianciaSentado(2:size(varianciaSentado,1),:);

inicio = 50;
final = 100;
varianciaAmostras = [0 0 0 0 0 0];
varianciaEscada = [0 0 0 0 0 0];

while (final < size(escada, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(escada(inicio:final, i));
  endfor
  varianciaEscada = [varianciaEscada ; varianciaAmostras];
  inicio += 50;
  final += 50;
endwhile

varianciaEscada = varianciaEscada(2:size(varianciaEscada,1),:);

inicio = 50;
final = 100;
varianciaAmostras = [0 0 0 0 0 0];
varianciaCair = [0 0 0 0 0 0];

while (final < size(cair, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(cair(inicio:final, i))
  endfor
  varianciaCair = [varianciaCair ; varianciaAmostras];
  inicio += 50;
  final += 50;
endwhile

varianciaCair = varianciaCair(2:size(varianciaCair,1),:);
clear varianciaAmostras