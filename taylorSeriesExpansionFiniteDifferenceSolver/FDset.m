%This program calculates approximated FD derivitatives
%and provides truncation error.  Follow the directions below

clc; clear all; close all; format compact;
syms r

%Enter the coordiantes points of the expansion wrt the center
%Ex.  If you want to expand  at T(i-1) T(i+1) T(i+2), expPoints = [-1 1 2]
expPoints = [-1/2 1];

%Enter the derivitatives to keep
%The B matrix must the same number of elements as expPoints matrix
%Ex.  If you want 1/r*dt/dr and d^2T/dr^2, B = [1/r; 1; 0; 0]
%Ex.  If you want d^2T/dr^2, B = [0; 1; 0; 0]
B = [1 0]; B = B'; 
Bind = [1]; %enter non zero indicies of the B matrix

%run the solution algorythim
FDsolver(B,Bind,expPoints)