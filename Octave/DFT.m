inicio = 1
final = 50
DFTAmostras = [0 0 0 0 0 0]
DFTAndando_1 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_1, 1))
  for i = 1:6
    DFTAmostras(:, i) = dft(andandoNormalizado_1(inicio:final, i))
  endfor
  DFTAndando_1 = [DFTAndando_1; DFTAmostras]
  inicio += 25
  final += 25
endwhile

inicio = 1
final = 50
DFTAmostras = [0 0 0 0 0 0]
DFTAndando_2 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_2, 1))
  for i = 1:6
    DFTAmostras(:, i) = dft(andandoNormalizado_2(inicio:final, i))
  endfor
  DFTAndando_2 = [DFTAndando_2; DFTAmostras]
  inicio += 25
  final += 25
endwhile

inicio = 1
final = 50
DFTAmostras = [0 0 0 0 0 0]
DFTDeitado = [0 0 0 0 0 0]

while (final < size(normalizadoDeitado, 1))
  for i = 1:6
    DFTAmostras(:, i) = dft(normalizadoDeitado(inicio:final, i))
  endfor
  DFTDeitado = [DFTDeitado; DFTAmostras]
  inicio += 25
  final += 25
endwhile

inicio = 1
final = 50
DFTAmostras = [0 0 0 0 0 0]
DFTEscada = [0 0 0 0 0 0]

while (final < size(normalizadoEscada, 1))
  for i = 1:6
    DFTAmostras(:, i) = dft(normalizadoEscada(inicio:final, i))
  endfor
  DFTEscada = [DFTEscada; DFTAmostras]
  inicio += 25
  final += 25
endwhile

inicio = 1
final = 50
DFTAmostras = [0 0 0 0 0 0]
DFTPulando = [0 0 0 0 0 0]

while (final < size(normalizadoPulando, 1))
  for i = 1:6
    DFTAmostras(:, i) = dft(normalizadoPulando(inicio:final, i))
  endfor
  DFTPulando = [DFTPulando; DFTAmostras]
  inicio += 25
  final += 25
endwhile

inicio = 1
final = 50
DFTAmostras = [0 0 0 0 0 0]
DFTSentado = [0 0 0 0 0 0]

while (final < size(normalizadoSentado, 1))
  for i = 1:6
    DFTAmostras(:, i) = dft(normalizadoSentado(inicio:final, i))
  endfor
  DFTSentado = [DFTSentado; DFTAmostras]
  inicio += 25
  final += 25
endwhile

clear DFTAmostras