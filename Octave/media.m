inicio = 50
final = 100
amostrasDesconsideradas = 100

mediaAmostras = [0 0 0 0 0 0]
mediaDeitado = [0 0 0 0 0 0]

while (final < size(deitadoNormalizado, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(deitadoNormalizado(inicio:final, i))
  endfor
  mediaDeitado = [mediaDeitado ; mediaAmostras]
  inicio += 50
  final += 50
endwhile

mediaDeitado = mediaDeitado(2:size(mediaDeitado,1),:)

inicio = 50
final = 100
mediaAmostras = [0 0 0 0 0 0]
mediaAndando_1 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_1, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(andandoNormalizado_1(inicio:final, i))
  endfor
  mediaAndando_1 = [mediaAndando_1 ; mediaAmostras]
  inicio += 50
  final += 50
endwhile

mediaAndando_1 = mediaAndando_1(2:size(mediaAndando_1,1),:)

inicio = 50
final = 100
mediaAmostras = [0 0 0 0 0 0]
mediaAndando_2 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_2, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(andandoNormalizado_2(inicio:final, i))
  endfor
  mediaAndando_2 = [mediaAndando_2 ; mediaAmostras]
  inicio += 50
  final += 50
endwhile

mediaAndando_2 = mediaAndando_2(2:size(mediaAndando_2,1),:)

inicio = 50
final = 100
mediaAmostras = [0 0 0 0 0 0]
mediaPulando = [0 0 0 0 0 0]

while (final < size(pulandoNormalizado, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(pulandoNormalizado(inicio:final, i))
  endfor
  mediaPulando = [mediaPulando ; mediaAmostras]
  inicio += 50
  final += 50
endwhile

mediaPulando = mediaPulando(2:size(mediaPulando,1),:)

inicio = 50
final = 100
mediaAmostras = [0 0 0 0 0 0]
mediaSentado = [0 0 0 0 0 0]

while (final < size(sentadoNormalizado, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(sentadoNormalizado(inicio:final, i))
  endfor
  mediaSentado = [mediaSentado ; mediaAmostras]
  inicio += 50
  final += 50
endwhile

mediaSentado = mediaSentado(2:size(mediaSentado,1),:)

inicio = 50
final = 100
mediaAmostras = [0 0 0 0 0 0]
mediaEscada = [0 0 0 0 0 0]

while (final < size(escadaNormalizado, 1))
  for i = 1:6
    mediaAmostras(:, i) = mean(escadaNormalizado(inicio:final, i))
  endfor
  mediaEscada = [mediaEscada ; mediaAmostras]
  inicio += 50
  final += 50
endwhile

mediaEscada = mediaEscada(2:size(mediaEscada,1),:)
clear mediaAmostras