#Minimun Square
Acuracia = zeros(6,2); # Media - Desvio Padrão
Precisao = zeros(6,2); # Media - Desvio Padrão

#Input matrix para cada movimento
phi_Sentado = [mediaSentado varianciaSentado curtoseSentado assimetriaSentado rfSentado];
phi_Sentado = [ones(size(phi_Sentado, 1) ,1) phi_Sentado];

phi_Escada = [mediaEscada varianciaEscada curtoseEscada assimetriaEscada rfEscada];
phi_Escada = [ones(size(phi_Escada, 1) ,1) phi_Escada];

phi_Andando = [mediaAndando varianciaAndando curtoseAndando assimetriaAndando rfAndando];
phi_Andando = [ones(size(phi_Andando, 1) ,1) phi_Andando];

phi_Pulando = [mediaPulando varianciaPulando curtosePulando assimetriaPulando rfPulando];
phi_Pulando = [ones(size(phi_Pulando, 1) ,1) phi_Pulando];

phi_Deitado = [mediaDeitado varianciaDeitado curtoseDeitado assimetriaDeitado rfDeitado];
phi_Deitado = [ones(size(phi_Deitado, 1) ,1) phi_Deitado];

phi_Cair = [mediaCair varianciaCair curtoseCair assimetriaCair rfCair];
phi_Cair = [ones(size(phi_Cair, 1) ,1) phi_Cair];

phi = [phi_Andando ; phi_Deitado ; phi_Escada ; phi_Sentado ; phi_Pulando ; phi_Cair];

#Todos contra um
t0 = clock ();
#Andando x Outros movimentos
  y_Andando = ones(size(phi_Andando,1),1);
  y_Deitado = -ones(size(phi_Deitado,1),1);
  y_Escada = -ones(size(phi_Escada,1),1);
  y_Sentado = -ones(size(phi_Sentado,1),1);
  y_Pulando = -ones(size(phi_Pulando,1),1);
  y_Cair = -ones(size(phi_Cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(1,1),Acuracia(1,2),Precisao(1,1),Precisao(1,2)] = minimos(phi,y);
  
  #Deitado x Outros movimentos
  y_Andando = -ones(size(phi_Andando,1),1);
  y_Deitado = ones(size(phi_Deitado,1),1);
  y_Escada = -ones(size(phi_Escada,1),1);
  y_Sentado = -ones(size(phi_Sentado,1),1);
  y_Pulando = -ones(size(phi_Pulando,1),1);
  y_Cair = -ones(size(phi_Cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(2,1),Acuracia(2,2),Precisao(2,1),Precisao(2,2)] = minimos(phi,y);
  
  #Escada x Outros movimentos
  y_Andando = -ones(size(phi_Andando,1),1);
  y_Deitado = -ones(size(phi_Deitado,1),1);
  y_Escada = ones(size(phi_Escada,1),1);
  y_Sentado = -ones(size(phi_Sentado,1),1);
  y_Pulando = -ones(size(phi_Pulando,1),1);
  y_Cair = -ones(size(phi_Cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(3,1),Acuracia(3,2),Precisao(3,1),Precisao(3,2)] = minimos(phi,y);
  
  #Sentado x Outros movimentos
  y_Andando = -ones(size(phi_Andando,1),1);
  y_Deitado = -ones(size(phi_Deitado,1),1);
  y_Escada = -ones(size(phi_Escada,1),1);
  y_Sentado = ones(size(phi_Sentado,1),1);
  y_Pulando = -ones(size(phi_Pulando,1),1);
  y_Cair = -ones(size(phi_Cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(4,1),Acuracia(4,2),Precisao(4,1),Precisao(4,2)] = minimos(phi,y);
  
  #Pulando x Outros movimentos
  y_Andando = -ones(size(phi_Andando,1),1);
  y_Deitado = -ones(size(phi_Deitado,1),1);
  y_Escada = -ones(size(phi_Escada,1),1);
  y_Sentado = -ones(size(phi_Sentado,1),1);
  y_Pulando = ones(size(phi_Pulando,1),1);
  y_Cair = -ones(size(phi_Cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(5,1),Acuracia(5,2),Precisao(5,1),Precisao(5,2)] = minimos(phi,y);
  
  #Pulando x Outros movimentos
  y_Andando = -ones(size(phi_Andando,1),1);
  y_Deitado = -ones(size(phi_Deitado,1),1);
  y_Escada = -ones(size(phi_Escada,1),1);
  y_Sentado = -ones(size(phi_Sentado,1),1);
  y_Pulando = -ones(size(phi_Pulando,1),1);
  y_Cair = ones(size(phi_Cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(6,1),Acuracia(6,2),Precisao(6,1),Precisao(6,2)] = minimos(phi,y);
  
  elapsed_time = etime (clock (), t0);