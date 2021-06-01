inicio = 50
final = 100
janela = 50
amostrasDesconsideradas = 100

varianciaAmostras = [0 0 0 0 0 0]
varianciaDeitado = [0 0 0 0 0 0]

while (final < size(deitadoNormalizado, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(deitadoNormalizado(inicio:final, i), 1)
  endfor
  varianciaDeitado = [varianciaDeitado ; varianciaAmostras]
  inicio += janela
  final += janela
endwhile

varianciaDeitado = varianciaDeitado(2:size(varianciaDeitado,1),:)

inicio = 50
final = 100
varianciaAmostras = [0 0 0 0 0 0]
varianciaSentado = [0 0 0 0 0 0]

while (final < size(sentadoNormalizado, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(sentadoNormalizado(inicio:final, i), 1)
  endfor
  varianciaSentado = [varianciaSentado; varianciaAmostras]
  inicio += janela
  final += janela
endwhile

varianciaSentado = varianciaSentado(2:size(varianciaSentado,1),:)

inicio = 50
final = 100
varianciaAmostras = [0 0 0 0 0 0]
varianciaPulando = [0 0 0 0 0 0]

while (final < size(pulandoNormalizado, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(pulandoNormalizado(inicio:final, i), 1)
  endfor
  varianciaPulando = [varianciaPulando; varianciaAmostras]
  inicio += janela
  final += janela
endwhile

varianciaPulando = varianciaPulando(2:size(varianciaPulando,1),:)

inicio = 50
final = 100
varianciaAmostras = [0 0 0 0 0 0]
varianciaAndando_1 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_1, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(andandoNormalizado_1(inicio:final, i), 1)
  endfor
  varianciaAndando_1 = [varianciaAndando_1; varianciaAmostras]
  inicio += janela
  final += janela
endwhile

varianciaAndando_1 = varianciaAndando_1(2:size(varianciaAndando_1,1),:)

inicio = 50
final = 100
varianciaAmostras = [0 0 0 0 0 0]
varianciaAndando_2 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_2, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(andandoNormalizado_2(inicio:final, i), 1)
  endfor
  varianciaAndando_2 = [varianciaAndando_2; varianciaAmostras]
  inicio += janela
  final += janela
endwhile

varianciaAndando_2 = varianciaAndando_2(2:size(varianciaAndando_2,1),:)

inicio = 50
final = 100
varianciaAmostras = [0 0 0 0 0 0]
varianciaEscada = [0 0 0 0 0 0]

while (final < size(escadaNormalizado, 1))
  for i = 1:6
    varianciaAmostras(:, i) = var(escadaNormalizado(inicio:final, i), 1)
  endfor
  varianciaEscada = [varianciaEscada; varianciaAmostras]
  inicio += janela
  final += janela
endwhile

varianciaEscada = varianciaEscada(2:size(varianciaEscada,1),:)
clear varianciaAmostras