clear all;
close all;
clc;

%% problem 1
nr = -5:15;
x = 3*delfcn(-2,nr)+2*delfcn(0,nr)-delfcn(3,nr)+5*delfcn(7,nr);

figure;stem(nr,x);grid;