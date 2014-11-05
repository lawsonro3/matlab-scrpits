% This program determines coordinates for rotatex axes
function [xNew yNew] = rotateAxesXY(x,y,theta);
xNew = x.*cos(theta) + y.*cos(pi/2 - theta);
yNew = x.*cos(pi/2 + theta) + y.*cos(theta);
    