function [r] = my_fft (s, fs)
  
  normal = length(s);
  aux = 0:normal-1;
  T = normal/fs;
  frequency = aux/T;
  S = fftn(s)/normal;
  fc = ceil(normal/2);
  S = S(1:fc);
  S_abs = abs(S);
  r = sum(S_abs(3:7).^2)/sum(S_abs(2:end).^2);
  
  figure();
  plot(frequency(2:fc), abs(S(2:end)));
  title('Analise de Espectro da variação da aceleração durante ANDAR');
  xlabel('Frequencia (Hz)');
  ylabel('Amplitude');
  endfunction