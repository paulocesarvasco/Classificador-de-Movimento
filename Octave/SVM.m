#SVM

Acuracia = zeros(6,2); # Media - Desvio Padrão
Precisao = zeros(6,2); # Media - Desvio Padrão

#Input matrix para cada movimento
sentado = [mediaSentado varianciaSentado curtoseSentado assimetriaSentado rfSentado];

escada = [mediaEscada varianciaEscada curtoseEscada assimetriaEscada rfEscada];

andando = [mediaAndando varianciaAndando curtoseAndando assimetriaAndando rfAndando];

pulando = [mediaPulando varianciaPulando curtosePulando assimetriaPulando rfPulando];

deitado = [mediaDeitado varianciaDeitado curtoseDeitado assimetriaDeitado rfDeitado];

cair = [mediaCair varianciaCair curtoseCair assimetriaCair rfCair];

x = [andando; deitado ; escada ; sentado ; pulando ; cair];

t0 = clock ();
#Andando x Outros movimentos
y_andando = ones(size(andando,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(1,1),Acuracia(1,2),Precisao(1,1),Precisao(1,2)]  = svm(x, y);
  
#Deitado x Outros movimentos
y_andando = -ones(size(andando,1),1);
y_Deitado = ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y_Cair = -ones(size(cair,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(2,1),Acuracia(2,2),Precisao(2,1),Precisao(2,2)] = svm(x, y);
  
#Escada x Outros movimentos
y_andando = -ones(size(andando,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y_Cair = -ones(size(cair,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(3,1),Acuracia(3,2),Precisao(3,1),Precisao(3,2)] = svm(x, y);
  
#Sentado x Outros movimentos
y_andando = -ones(size(andando,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y_Cair = -ones(size(cair,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(4,1),Acuracia(4,2),Precisao(4,1),Precisao(4,2)] = svm(x, y);
  
#Pulando x Outros movimentos
y_andando = -ones(size(andando,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = ones(size(pulando,1),1);
y_Cair = -ones(size(cair,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(5,1),Acuracia(5,2),Precisao(5,1),Precisao(5,2)] = svm(x, y);

#Cair x Outros movimentos
y_andando = -ones(size(andando,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y_Cair = ones(size(cair,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(6,1),Acuracia(6,2),Precisao(6,1),Precisao(6,2)] = svm(x, y);

elapsed_time = etime (clock (), t0);