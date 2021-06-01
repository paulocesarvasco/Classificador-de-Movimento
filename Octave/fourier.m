inicio = 50
final = 100
janela = 25
amostrasDesconsideradas = 100
pontos = 100

fftDeitado = [0 0 0 0 0 0]

while (final < size(deitadoNormalizado, 1) - amostrasDesconsideradas)
  fftAmostras = fft(deitadoNormalizado(inicio:final,:) , pontos)
  fftDeitado = [fftDeitado ; fftAmostras]
  inicio += janela
  final += janela
endwhile

fftDeitado = fftDeitado(2:size(fftDeitado,1),:)

inicio = 50
final = 100
fftSentado = [0 0 0 0 0 0]

while (final < size(sentadoNormalizado, 1) - amostrasDesconsideradas)
  fftAmostras = fft(deitadoNormalizado(inicio:final,:) , pontos)
  fftSentado = [fftSentado; fftAmostras]
  inicio += janela
  final += janela
endwhile

fftSentado = fftSentado(2:size(fftSentado,1),:)

inicio = 50
final = 100
fftAmostras = [0 0 0 0 0 0]
fftPulando = [0 0 0 0 0 0]

while (final < size(pulandoNormalizado, 1) - amostrasDesconsideradas)
  fftAmostras = fft(deitadoNormalizado(inicio:final,:) , pontos)
  fftPulando = [fftPulando; fftAmostras]
  inicio += janela
  final += janela
endwhile

fftPulando = fftPulando(2:size(fftPulando,1),:)

inicio = 50
final = 100
fftAmostras = [0 0 0 0 0 0]
fftAndando_1 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_1, 1) - amostrasDesconsideradas)
  fftAmostras = fft(deitadoNormalizado(inicio:final,:) , pontos)
  fftAndando_1 = [fftAndando_1; fftAmostras]
  inicio += janela
  final += janela
endwhile

fftAndando_1 = fftAndando_1(2:size(fftAndando_1,1),:)

inicio = 50
final = 100
fftAmostras = [0 0 0 0 0 0]
fftAndando_2 = [0 0 0 0 0 0]

while (final < size(andandoNormalizado_2, 1) - amostrasDesconsideradas)
  fftAmostras = fft(deitadoNormalizado(inicio:final,:) , pontos)
  fftAndando_2 = [fftAndando_2; fftAmostras]
  inicio += janela
  final += janela
endwhile

fftAndando_2 = fftAndando_2(2:size(fftAndando_2,1),:)

inicio = 50
final = 100
fftAmostras = [0 0 0 0 0 0]
fftEscada = [0 0 0 0 0 0]

while (final < size(escadaNormalizado, 1) - amostrasDesconsideradas)
  fftAmostras = fft(deitadoNormalizado(inicio:final,:) , pontos)
  fftEscada = [fftEscada; fftAmostras]
  inicio += janela
  final += janela
endwhile

fftEscada = fftEscada(2:size(fftEscada,1),:)
clear fftAmostras