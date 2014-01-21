% This simple script calculates and plots rotor power vs. flow velocity
% for an assumed performance coefficient
% @author Michael Lawson

clc; clear all; close all

Cp = 0.47;
rho = 1025;
flowVel = 0.5:.01:2.5;
rotorDia = 5:.1:35;

[U D] = meshgrid(flowVel,rotorDia);
pow = 1/2*rho*U.^3.*pi.*(D./2).^2*Cp;

contourf(D,U,pow/1000,30);
caxis([0 1000])
colorbar
xlabel('Rotor diameter (m)');
ylabel('Flow velocity (m/s)');
title('Rotor power (kW)');