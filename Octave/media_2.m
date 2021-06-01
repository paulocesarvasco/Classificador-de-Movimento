inicio = 50;
final = 100;

mediaAmostras = [0 0 0 0 0 0];
mediaDeitado = [0 0 0 0 0 0];

while (final < size(deitar, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(deitar(inicio:final, i));
  endfor
  mediaDeitado = [mediaDeitado ; mediaAmostras];
  inicio += 50;
  final += 50;
endwhile

mediaDeitado = mediaDeitado(2:size(mediaDeitado,1),:);

inicio = 50;
final = 100;
mediaAmostras = [0 0 0 0 0 0];
mediaAndando = [0 0 0 0 0 0];

while (final < size(andar, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(andar(inicio:final, i));
  endfor
  mediaAndando = [mediaAndando ; mediaAmostras];
  inicio += 50;
  final += 50;
endwhile

mediaAndando = mediaAndando(2:size(mediaAndando,1),:);

inicio = 50;
final = 100;
mediaAmostras = [0 0 0 0 0 0];
mediaPulando = [0 0 0 0 0 0];

while (final < size(pular, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(pular(inicio:final, i));
  endfor
  mediaPulando = [mediaPulando ; mediaAmostras];
  inicio += 50;
  final += 50;
endwhile

mediaPulando = mediaPulando(2:size(mediaPulando,1),:);

inicio = 50;
final = 100;
mediaAmostras = [0 0 0 0 0 0];
mediaSentado = [0 0 0 0 0 0];

while (final < size(sentar, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(sentar(inicio:final, i));
  endfor
  mediaSentado = [mediaSentado ; mediaAmostras];
  inicio += 50;
  final += 50;
endwhile

mediaSentado = mediaSentado(2:size(mediaSentado,1),:);

inicio = 50;
final = 100;
mediaAmostras = [0 0 0 0 0 0];
mediaEscada = [0 0 0 0 0 0];

while (final < size(escada, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(escada(inicio:final, i));
  endfor
  mediaEscada = [mediaEscada ; mediaAmostras];
  inicio += 50;
  final += 50;
endwhile

mediaEscada = mediaEscada(2:size(mediaEscada,1),:);

inicio = 50;
final = 100;
mediaAmostras = [0 0 0 0 0 0];
mediaCair = [0 0 0 0 0 0];

while (final < size(cair, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(cair(inicio:final, i))
  endfor
  mediaCair = [mediaCair ; mediaAmostras];
  inicio += 50;
  final += 50;
endwhile

mediaCair = mediaCair(2:size(mediaCair,1),:);
clear mediaAmostras