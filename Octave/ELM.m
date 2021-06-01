#Extreme Learning Machine
# Y - cada pósição do vetor é a resultante da comparação entre dois movimentos
#Input matrix
x_Sentado = [mediaSentado varianciaSentado curtoseSentado assimetriaSentado rfSentado];

x_Andando = [mediaAndando varianciaAndando curtoseAndando assimetriaAndando rfAndando];

x_Escada = [mediaEscada varianciaEscada curtoseEscada assimetriaEscada rfEscada];

x_Deitado = [mediaDeitado varianciaDeitado curtoseDeitado assimetriaDeitado rfDeitado];

x_Pulando = [mediaPulando varianciaPulando curtosePulando assimetriaPulando rfPulando];

x_Cair = [mediaCair varianciaCair curtoseCair assimetriaCair rfCair];

x = [x_Andando; x_Deitado ; x_Escada ; x_Sentado ; x_Pulando ; x_Cair];

t0 = clock ();

neuronios = [150];
Acuracia = zeros(6,2);
Precisao = zeros(6,2);
#F1 = zeros(6,size(neuronios,2));
#ROC = zeros(6,2);
bias = 0.2;
mark = ['o','+','p','x','d','s'];

#figure(1);
#figure(2);
#figure(3);
for i = 1:size(neuronios,2)
  t0 = clock ();
  n = neuronios(1,i);
  t0 = clock ();
  
  #Andando x Outros movimentos
  y_Andando = ones(size(x_Andando,1),1);
  y_Deitado = -ones(size(deitado,1),1);
  y_Escada = -ones(size(escada,1),1);
  y_Sentado = -ones(size(sentado,1),1);
  y_Pulando = -ones(size(pulando,1),1);
  y_Cair = -ones(size(cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];

  [Acuracia(1,1),Acuracia(1,2),Precisao(1,1),Precisao(1,2)]  = elm(x,y,n,bias);

  #Andando x Outros movimentos
  y_Andando = ones(size(x_Andando,1),1);
  y_Deitado = -ones(size(x_Deitado,1),1);
  y_Escada = -ones(size(x_Escada,1),1);
  y_Sentado = -ones(size(x_Sentado,1),1);
  y_Pulando = -ones(size(x_Pulando,1),1);
  y_Cair = -ones(size(cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(1,1),Acuracia(1,2),Precisao(1,1),Precisao(1,2)] = elm(x,y,n,bias);
  
  #Deitado x Outros movimentos
  y_Andando = -ones(size(x_Andando,1),1);
  y_Deitado = ones(size(x_Deitado,1),1);
  y_Escada = -ones(size(x_Escada,1),1);
  y_Sentado = -ones(size(x_Sentado,1),1);
  y_Pulando = -ones(size(x_Pulando,1),1);
  y_Cair = -ones(size(cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(2,1),Acuracia(2,2),Precisao(2,1),Precisao(2,2)] = elm(x,y,n,bias);
  
  #Escada x Outros movimentos
  y_Andando = -ones(size(x_Andando,1),1);
  y_Deitado = -ones(size(x_Deitado,1),1);
  y_Escada = ones(size(x_Escada,1),1);
  y_Sentado = -ones(size(x_Sentado,1),1);
  y_Pulando = -ones(size(x_Pulando,1),1);
  y_Cair = -ones(size(cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(3,1),Acuracia(3,2),Precisao(3,1),Precisao(3,2)] = elm(x,y,n,bias);
  
  #Sentado x Outros movimentos
  y_Andando = -ones(size(x_Andando,1),1);
  y_Deitado = -ones(size(x_Deitado,1),1);
  y_Escada = -ones(size(x_Escada,1),1);
  y_Sentado = ones(size(x_Sentado,1),1);
  y_Pulando = -ones(size(x_Pulando,1),1);
  y_Cair = -ones(size(cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(4,1),Acuracia(4,2),Precisao(4,1),Precisao(4,2)] = elm(x,y,n,bias);
  
  #Pulando x Outros movimentos
  y_Andando = -ones(size(x_Andando,1),1);
  y_Deitado = -ones(size(x_Deitado,1),1);
  y_Escada = -ones(size(x_Escada,1),1);
  y_Sentado = -ones(size(x_Sentado,1),1);
  y_Pulando = ones(size(x_Pulando,1),1);
  y_Cair = -ones(size(cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(5,1),Acuracia(5,2),Precisao(5,1),Precisao(5,2)] = elm(x,y,n,bias);
  
  #Cair x Outros movimentos
  y_Andando = -ones(size(x_Andando,1),1);
  y_Deitado = -ones(size(x_Deitado,1),1);
  y_Escada = -ones(size(x_Escada,1),1);
  y_Sentado = -ones(size(x_Sentado,1),1);
  y_Pulando = -ones(size(x_Pulando,1),1);
  y_Cair = ones(size(cair,1),1);
  y = [y_Andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
  [Acuracia(6,1),Acuracia(6,2),Precisao(6,1),Precisao(6,2)] = elm(x,y,n,bias);
  
  #hold on
  elapsed_time = etime (clock (), t0)
  [Acuracia Precisao]
endfor

#figure(1);
#legend(int2str(neuronios(1,1)), int2str(neuronios(1,2)), int2str(neuronios(1,3)), int2str(neuronios(1,4)), int2str(neuronios(1,5)));
#hold on
#figure(2);
#legend(int2str(neuronios(1,1)), int2str(neuronios(1,2)), int2str(neuronios(1,3)), int2str(neuronios(1,4)), int2str(neuronios(1,5)));
#hold on
#figure(3);
#legend(int2str(neuronios(1,1)), int2str(neuronios(1,2)), int2str(neuronios(1,3)), int2str(neuronios(1,4)), int2str(neuronios(1,5)));
#hold on
