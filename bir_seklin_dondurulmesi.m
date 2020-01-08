%Bu fonksiyon ile bir bir şeklin kendi merkezi etrafında döndürülmesi sonucu oluşan yeni noktaların hesaplanması için hazırlanmıştır.
%elimizde kapalı bir şekil oluşturan noktalar var. Bu noktaları plot fonksiyonu ile çizdiğimizde olşan bir şekli verilen açıda ve kendi etrafında(yani şeklin kendi merkezi) döndürme işlemi yaptırmak istiyoruz. 
% x_points    % x eksenindeki noktaları ifade eder
% y_points    % y eksenindeki noktaları ifade eder
% rotationAngle  %döndürme açısını ifade eder.


function [newPositionX newPositionY] = customRotate(x_points, y_points, rotationAngle)
  centerX = (min(x_points)+max(x_points))/2;
  centerY = (min(y_points)+max(y_points))/2;
  
  rotationX = (x_points-centerX)*cos(rotationAngle) - (y_points-centerY)*sin(rotationAngle);
  rotationY = (x_points-centerX)*sin(rotationAngle) + (y_points-centerY)*cos(rotationAngle);
  
  newPositionX = x_points - rotationX;
  newPositionX = y_points - rotationY;
end

