% differentiation

clc
clear all

syms phi
syms theta
syms d
syms b
syms a


f1(theta,d)=a*cos(phi)+b*cos(theta)-d;
f2(theta,d)=a*sin(phi)-b*sin(theta);

diff(f1,theta)
diff(f1,d)
diff(f2,theta)
diff(f2,d)

