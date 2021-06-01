#Extreme Learning Machine
resultados = zeros(1, 2); #Acuracia Precisao

twomoons = [twomoons_x twomoons_y];
x = twomoons(:,1:2);
y = twomoons(:,3);

for i = 1:size(y)
  if y(i) == 0
    y(i) = -1;
  endif
endfor

Y = elm(x, y);
figure();
plot3(x(271:300,1),x(271:300,2),Y','r+');
hold on
grid on;
xlabel("x1");
ylabel("x2");
zlabel("y");

plot3(x(271:300,1),x(271:300,2),y(271:300),'bo');
#plot3(twomoons(:,1),twomoons(:,2),y, 'ro');

#[resultados(1,1), resultados(1, 2)] = elm_test(x, y);
