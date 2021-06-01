inicio = 50
final = 100
janela = 50
amostrasDesconsideradas = 100

curtoseAmostras = [0 0 0 0 0 0]
curtoseAndando_1 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_1, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(andandoNormalizado_1(inicio:final, i), 1)
  endfor
  curtoseAndando_1 = [curtoseAndando_1; curtoseAmostras]
  inicio += janela
  final += janela
endwhile

curtoseAndando_1 = curtoseAndando_1(2:size(curtoseAndando_1,1),:)

inicio = 50
final = 100
curtoseAmostras = [0 0 0 0 0 0]
curtoseAndando_2 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_2, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(andandoNormalizado_2(inicio:final, i), 1)
  endfor
  curtoseAndando_2 = [curtoseAndando_2; curtoseAmostras]
  inicio += janela
  final += janela
endwhile

curtoseAndando_2 = curtoseAndando_2(2:size(curtoseAndando_2,1),:)

inicio = 50
final = 100
curtoseAmostras = [0 0 0 0 0 0]
curtoseDeitado = [0 0 0 0 0 0]

while (final < size(deitadoNormalizado, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(deitadoNormalizado(inicio:final, i), 1)
  endfor
  curtoseDeitado = [curtoseDeitado; curtoseAmostras]
  inicio += janela
  final += janela
endwhile

curtoseDeitado = curtoseDeitado(2:size(curtoseDeitado,1),:)

inicio = 50
final = 100
curtoseAmostras = [0 0 0 0 0 0]
curtoseEscada = [0 0 0 0 0 0]

while (final < size(escadaNormalizado, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(escadaNormalizado(inicio:final, i), 1)
  endfor
  curtoseEscada = [curtoseEscada; curtoseAmostras]
  inicio += janela
  final += janela
endwhile

curtoseEscada = curtoseEscada(2:size(curtoseEscada,1),:)

inicio = 50
final = 100
curtoseAmostras = [0 0 0 0 0 0]
curtosePulando = [0 0 0 0 0 0]

while (final < size(pulandoNormalizado, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(pulandoNormalizado(inicio:final, i), 1)
  endfor
  curtosePulando = [curtosePulando; curtoseAmostras]
  inicio += janela
  final += janela
endwhile

curtosePulando = curtosePulando(2:size(curtosePulando,1),:)

inicio = 50
final = 100
curtoseAmostras = [0 0 0 0 0 0]
curtoseSentado = [0 0 0 0 0 0]

while (final < size(sentadoNormalizado, 1))
  for i = 1:6
    curtoseAmostras(:, i) = kurtosis(sentadoNormalizado(inicio:final, i), 1)
  endfor
  curtoseSentado = [curtoseSentado; curtoseAmostras]
  inicio += janela
  final += janela
endwhile

curtoseSentado = curtoseSentado(2:size(curtoseSentado,1),:)
clear curtoseAmostras