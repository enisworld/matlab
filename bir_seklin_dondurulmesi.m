%Bu fonksiyon ile bir bir şeklin kendi merkezi etrafında döndürülmesi sonucu oluşan yeni noktaların hesaplanması için hazırlanmıştır.
%elimizde kapalı bir şekil oluşturan noktalar var. Bu noktaları plot fonksiyonu ile çizdiğimizde olşan bir şekli verilen açıda ve kendi etrafında(yani şeklin kendi merkezi) döndürme işlemi yaptırmak istiyoruz. 
% x_points    % x eksenindeki noktaları ifade eder
% y_points    % y eksenindeki noktaları ifade eder
% rotationAngle  %döndürme açısını ifade eder.

% Örnek;
% x = [10  20 20 10 10]; y = [5 5 10 10 5];
% f = figure;
% ax = axes(f);
% plot(ax,x,y,'Color', 'g');
%
% [newPosX newPosY] = customRotate(x,y,90);
% hold on;
% plot(ax,newPosX,newPosY,'Color', 'r');
% hold off;


function [newPositionX newPositionY] = customRotate(x_points, y_points, rotationAngle)
  centerX = (min(x_points)+max(x_points))/2;
  centerY = (min(y_points)+max(y_points))/2;
  
  rotationX = (x_points-centerX)*cos(rotationAngle) - (y_points-centerY)*sin(rotationAngle);
  rotationY = (x_points-centerX)*sin(rotationAngle) + (y_points-centerY)*cos(rotationAngle);
  
  newPositionX = centerX + rotationX;
  newPositionX = centerY + rotationY;
end

