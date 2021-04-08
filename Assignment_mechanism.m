% Position analysis for the assignment


a = 0.1;
b = 0.2;
phi = deg2rad(30);

% set a reasonable starting point
u0 = [deg2rad(15) ; a+b];

% create function handles
F = @(u) constraint(u, a, b, phi);
J = @(u) jacobian(u, a);

eps = 1e-12;
[u, iteration_counter] = NR_method(F, J, u0, eps);

rad2deg(u(1))
u(2)

function P = constraint(u, a, b, phi)
theta = u(1);
d = u(2);

P = [a*cos(phi)+b*cos(theta)-d
    a*sin(phi)-b*sin(theta)];
end

function P = jacobian(u, b)
theta = u(1);
P = [-b*sin(theta), -1
    -b*cos(theta), 0];
end