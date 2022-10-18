function y = jacob_inv2(u)

L1 = 50
L2 = 100
L3 = 100


theta1 = u(1)
theta2 = u(2)
theta3 = u(3)

c23 = cos(q2+q3);
s23 = sin(q2+q3);

dx = u(4)
dy = u(5)
dz = u(6)


Jacobian = [-sin(theta1)*(L1 + L3*cos(theta2 + theta3) + L2*cos(theta2)), -cos(theta1)*(L3*sin(theta2 + theta3) + L2*sin(theta2)), -L3*sin(theta2 + theta3)*cos(theta1); 
            cos(theta1)*(L1 + L3*cos(theta2 + theta3) + L2*cos(theta2)), -sin(theta1)*(L3*sin(theta2 + theta3) + L2*sin(theta2)), -L3*sin(theta2 + theta3)*sin(theta1);
            0, - L3*cos(theta2 + theta3) - L2*cos(theta2), -L3*cos(theta2 + theta3)]