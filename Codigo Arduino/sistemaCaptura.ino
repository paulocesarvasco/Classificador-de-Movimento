#include <LiquidCrystal.h>
#include<Wire.h>
#include <SPI.h>
#include <SD.h>

#define SR A1
#define EN A0
#define DB4 4
#define DB5 5
#define DB6 6
#define DB7 7
#define pinoEscolha 3
#define pinoStart 8
#define DELTA_T 100

//PINO DIGITAL UTILIZADO PELO TERMINAL CS DO MÓDULO
const int chipSelect = 10;

//Endereco I2C do MPU6050
const int MPU = 0x68; 

//Variaveis para armazenar valores dos sensores
int AcX,AcY,AcZ,GyX,GyY,GyZ;
int flag = 0;

unsigned int botaoOpcoes = LOW,
  estadoBotaoOpcoes = 0,
  estadoOpcoes = 0,
  botaoConfirmacao = LOW,
  estadoBotaoConfirmacao = 0,
  estadoAquisicao = 0,
  movimento = 0,
  t0, t;
String posicao, dado;

//CONFIGURAÇÃO LCD
LiquidCrystal lcd(SR, EN, DB4, DB5, DB6, DB7);  //Define os pinos que serão utilizados para ligação ao display

File dataFile;

void setup(){
  
  pinMode(pinoEscolha,INPUT);
  pinMode(pinoStart,INPUT);

  /*CONFIGURAÇÃO DISPLAY*/
  lcd.begin(16, 2); //Define o número de colunas e linhas do LCD
  lcd.clear();  //Limpa a tela
  lcd.setCursor(0,0);
  
  /*CONFIGURAÇÃO MPU-6050*/
  Wire.setClock(400000);
  Wire.beginTransmission(MPU);
  Wire.write(0x6B); 
  Wire.write(0); 
  Wire.endTransmission(true);
  writeRegister(25, 7); //Sample Rate Divider
  writeRegister(26, 0x01);//Configura o Digital Low Pass Filter
  writeRegister(27, 0x00); //Configura giroscopio
  writeRegister(28, 0x00); //Configura acelerometro
  writeRegister(56, 0x01); //Configura o modo da interrupção
  writeRegister(107, 0x08); //Configura power mode
  
  /*CONFIGURAÇÃO CARTÃO DE MEMORIA*/
  lcd.print("Iniciando cartao"); //IMPRIME O TEXTO NO DISPLAY
  pinMode(SS, OUTPUT); //DEFINE O PINO COMO SAÍDA
  if(!SD.begin(chipSelect)){ //SE O CARTÃO DE MEMÓRIA NÃO ESTIVER PRESENTE OU FALHAR, FAZ
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("Cartao memoria");
    lcd.setCursor(0,1);
    lcd.print("falhou.");
    delay(2000);
    return;
  }
  else{
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.print("Cartao memoria");
    lcd.setCursor(0,1);
    lcd.print("sucesso.");
    delay(2000);
  }
  menu();

  /*HABILITAÇÃO DA INTERRUPÇÃO*/
  attachInterrupt(digitalPinToInterrupt(2), dadosProntos, RISING);
}

void loop(){
  lerBotaoOpcoes();
  opcao();
  lerBotaoConfirmacao();
  aquisicao();
  
  if(flag == 1){
    lerGiroscopio();
    lerAcelerometro();
    formataDado();
    if(dataFile)
      dataFile.println(dado);
    flag = 0;
  }
}

void lerBotaoOpcoes(){
  switch(estadoBotaoOpcoes){
    case 0:
      if(digitalRead(pinoEscolha) != botaoOpcoes){
        estadoBotaoOpcoes = 1;
        t0 = millis();
      }
      break;
    case 1:
      t = millis();
      if(t - t0 > DELTA_T)
        estadoBotaoOpcoes = 2;
      break;
    case 2:
      if(digitalRead(pinoEscolha) != botaoOpcoes)
        botaoOpcoes = !botaoOpcoes;
      else
        estadoBotaoOpcoes = 0;
      break;
  }
  return;
}

void lerBotaoConfirmacao(){
  switch(estadoBotaoConfirmacao){
    case 0:
      if(digitalRead(pinoStart) != botaoConfirmacao){
        estadoBotaoConfirmacao = 1;
        t0 = millis();
      }
      break;
    case 1:
      t = millis();
      if(t - t0 > DELTA_T)
        estadoBotaoConfirmacao = 2;
      break;
    case 2:
      if(digitalRead(pinoStart) != botaoConfirmacao)
        botaoConfirmacao = !botaoConfirmacao;
      else
        estadoBotaoConfirmacao = 0;
      break;
  }
  return;
}

void opcao(){

  switch(estadoOpcoes){
    case 0:
      if(botaoOpcoes == HIGH)
        estadoOpcoes = 1;
      break;
    case 1:
      movimento++;
      movimento %= 5;
      menu();
      estadoOpcoes = 2;
      break;
    case 2:
      if(botaoOpcoes == LOW)
        estadoOpcoes = 0;
      break;
  }
  return;
}

void menu(){

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Escolha a Opcao");
  lcd.setCursor(0,1);
  
  switch(movimento){
    case 0:
      lcd.print("SENTADO");
      posicao = "sentado.txt";
      break;
    case 1:
      lcd.print("EM PE");
      posicao = "empe.txt";
      break;
    case 2:
      lcd.print("DEITADO");
      posicao = "deitado.txt";
      break;
    case 3:
      lcd.print("PULANDO");
      posicao = "pulando.txt";
      break;
    case 4:
      lcd.print("CORRENDO");
      posicao = "correndo.txt";
      break;
  }
  return;
}

void aquisicao(){

  switch(estadoAquisicao){
    case 0:
      if(botaoConfirmacao == HIGH)
        estadoAquisicao = 1;
      break;
    case 1:
        iniciarAquisicao();
        estadoAquisicao = 2;
      break;
    case 2:
      if(botaoConfirmacao == LOW)
        estadoAquisicao = 3;
      break;
    case 3:
      if(botaoConfirmacao == HIGH)
        estadoAquisicao = 4;
      break;
    case 4:
        pararAquisicao();
        estadoAquisicao = 5;
      break;
    case '5':
      if(botaoConfirmacao == LOW)
        estadoAquisicao = 0;
      break;
  }
  return;
}

void iniciarAquisicao(){
  lcd.clear();
  lcd.setCursor(0,0);
  dataFile = SD.open(posicao, FILE_WRITE);
  if(dataFile)
    lcd.print("Gravando dados");
  else
    lcd.print("Erro cartao");
  return;
}

void pararAquisicao(){
  dataFile.close();
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Finalizando");
  lcd.setCursor(0,1);
  lcd.print("aquisicao.");
  delay(2000);
  menu();
  return;
}

void writeRegister(uint8_t addRegister, uint8_t dado){
    Wire.begin();
    Wire.beginTransmission(MPU);
    Wire.write(addRegister);
    Wire.write(dado);
    Wire.endTransmission(true);
}

void lerGiroscopio(){
  Wire.beginTransmission(MPU);
  Wire.write(0x43);  // starting with register 0x43 (GYRO_XOUT_H)
  Wire.endTransmission(false);
  Wire.requestFrom(MPU,6,true);
  if(Wire.available() > 0){
    GyX=Wire.read()<<8|Wire.read();  //0x43 (GYRO_XOUT_H) & 0x44 (GYRO_XOUT_L)
    GyY=Wire.read()<<8|Wire.read();  //0x45 (GYRO_YOUT_H) & 0x46 (GYRO_YOUT_L)
    GyZ=Wire.read()<<8|Wire.read();  //0x47 (GYRO_ZOUT_H) & 0x48 (GYRO_ZOUT_L)
  }
}

void lerAcelerometro(){
  Wire.beginTransmission(MPU);
  Wire.write(0x3B);  // starting with register 0x3B (ACCEL_XOUT_H)
  Wire.endTransmission(false);
  Wire.requestFrom(MPU,6,true);
  if(Wire.available() > 0){
    AcX=Wire.read()<<8|Wire.read();  //0x3B (ACCEL_XOUT_H) & 0x3C (ACCEL_XOUT_L)     
    AcY=Wire.read()<<8|Wire.read();  //0x3D (ACCEL_YOUT_H) & 0x3E (ACCEL_YOUT_L)
    AcZ=Wire.read()<<8|Wire.read();  //0x3F (ACCEL_ZOUT_H) & 0x40 (ACCEL_ZOUT_L)
  }
}

void formataDado(){

  dado = String(AcX);
  dado += ",";
  dado += String(AcY);
  dado += ",";
  dado += String(AcZ);
  dado += ",";
  dado += String(GyX);
  dado += ",";
  dado += String(GyY);
  dado += ",";
  dado += String(GyZ);
  
}

void dadosProntos(){
  flag = 1;
}
