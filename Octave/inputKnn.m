#Knn

Acuracia = zeros(6,2); # Media - Desvio Padrão
Precisao = zeros(6,2); # Media - Desvio Padrão

k = 7;

#Input matrix para cada movimento
sentado = [mediaSentado varianciaSentado curtoseSentado assimetriaSentado rfSentado];

escada = [mediaEscada varianciaEscada curtoseEscada assimetriaEscada rfEscada];

andando = [mediaAndando varianciaAndando curtoseAndando assimetriaAndando rfAndando];

#andando_2 = [mediaAndando_2 varianciaAndando_2 curtoseAndando_2 assimetriaAndando_2 rfAndando_2];

pulando = [mediaPulando varianciaPulando curtosePulando assimetriaPulando rfPulando];

deitado = [mediaDeitado varianciaDeitado curtoseDeitado assimetriaDeitado rfDeitado];

cair = [mediaCair varianciaCair curtoseCair assimetriaCair rfCair];

x = [andando; deitado ; escada ; sentado ; pulando ; cair];

t0 = clock ();

#Andando x Outros movimentos
y_andando = ones(size(andando,1),1);
#y_Andando_2 = ones(size(andando_2,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];

[Acuracia(1,1),Acuracia(1,2),Precisao(1,1),Precisao(1,2)]  = knn(x, y, k);
 
#Deitado x Outros movimentos
y_andando = -ones(size(andando,1),1);
#y_Andando_2 = -ones(size(andando_2,1),1);
y_Deitado = ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(2,1),Acuracia(2,2),Precisao(2,1),Precisao(2,2)] = knn(x, y, k);
  
#Escada x Outros movimentos
y_andando = -ones(size(andando,1),1);
#y_Andando_2 = -ones(size(andando_2,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(3,1),Acuracia(3,2),Precisao(3,1),Precisao(3,2)] = knn(x, y, k);
  
#Sentado x Outros movimentos
y_andando = -ones(size(andando,1),1);
#y_Andando_2 = -ones(size(andando_2,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = ones(size(sentado,1),1);
y_Pulando = -ones(size(pulando,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(4,1),Acuracia(4,2),Precisao(4,1),Precisao(4,2)] = knn(x, y, k);
  
#Pulando x Outros movimentos
y_andando = -ones(size(andando,1),1);
#y_Andando_2 = -ones(size(andando_2,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = ones(size(pulando,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];
[Acuracia(5,1),Acuracia(5,2),Precisao(5,1),Precisao(5,2)] = knn(x, y, k);

#Andando x Outros movimentos
y_andando = -ones(size(andando,1),1);
y_Deitado = -ones(size(deitado,1),1);
y_Escada = -ones(size(escada,1),1);
y_Sentado = -ones(size(sentado,1),1);
y_Pulando = ones(size(pulando,1),1);
y_Cair = -ones(size(cair,1),1);
y = [y_andando ; y_Deitado ; y_Escada ; y_Sentado ; y_Pulando ; y_Cair];

[Acuracia(6,1),Acuracia(6,2),Precisao(6,1),Precisao(6,2)]  = knn(x, y, k);

elapsed_time = etime (clock (), t0);