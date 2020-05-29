%% Exercicio 11 de máquinas
% Aluno: André Luis H. Coutinho
% Ra: 166329
 
%% dados:
t = 0:.01:3;  % [s] tempo
w = 5;          % [rad/s] frequencia angular
Imax = 10;      % [A] corrente máxima
 
%% Correntes
 
Ia = Imax*cos(w*t);
Ib = Imax*cos(w*t - 2*pi/3);
Ic = Imax*cos(w*t + 2*pi/3);
 
 
close all
  
[x,y] = pol2cart(deg2rad(0),Ia);
[x1,y1] = pol2cart(2*pi/3,Ib);
[x2,y2] = pol2cart(-2*pi/3,Ic);
 
max_lim = 17;
x_fake=[0 max_lim 0 -max_lim];
y_fake=[max_lim 0 -max_lim 0];

for j = 1:length(t)
    
    h_fake=compass(x_fake,y_fake);
    set(h_fake,'Visible','off');
    hold on;
    h = compass(x(j),y(j), 'r');
    set(h, 'linewidth', 3);
    h = compass(x1(j),y1(j), 'g');
    set(h, 'linewidth', 3);
    h = compass(x2(j),y2(j), 'b');
    set(h, 'linewidth', 3);
    h = compass(x(j)+x1(j)+x2(j),y(j)+y1(j)+y2(j), 'y');
    set(h, 'linewidth', 3);
    
    hold off
    pause (.0001)
end