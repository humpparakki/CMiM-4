% Kinematic analysis

clc
clear all

% initial values

t=linspace(0,10,1000);

omg = 1;
a = 0.1;
b = 0.2;
phi = (pi/6)+omg*t;
phidot = -1;

%Position of d and orienation of AB

theta=asin((0.1*sin(phi)/0.2));
d=0.1*cos(phi)+0.2*cos(theta);

%Velocity of and angular velocity of AB

thetadot = ((0.1*phidot*cos(phi)))./(0.2*cos(theta));
ddot = -a*phidot*sin(phi)-0.2*thetadot.*sin(theta);

figure (1)
plot (t, d)
title 'location d'
xlabel 'time t'
ylabel 'position'
grid on

figure (2)
plot (t, rad2deg(theta))
title 'orientation of body AB'
xlabel 'time t'
ylabel 'rotation deg'
grid on

figure (3)
plot (t, ddot)
title 'velocity at d'
xlabel 'time t'
ylabel 'velocity'
grid on

figure (4)
plot (t, rad2deg(thetadot))
title 'angular velocity AB'
xlabel 'time t'
ylabel 'angular velocity'
grid on

