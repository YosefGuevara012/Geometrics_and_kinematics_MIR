function HTM = HM(a, alpha, d, theta)

    rot_z = [cosd(theta) -sind(theta) 0 0;
             sind(theta)   cosd(theta) 0 0;
               0             0        1 0;
               0             0        0 1]
    
    tran_z = [1 0 0 0;
              0 1 0 0;
              0 0 1 d;
              0 0 0 1;]
    
    rot_x = [1     0            0       0;
             0 cosd(alpha) -sind(alpha) 0;
             0 sind(alpha) cosd(alpha)  0;
             0     0            0       1]
    
    tran_x = [1 0 0 a;
              0 1 0 0;
              0 0 1 0;
              0 0 0 1;]
    
    HTM = rot_z * tran_z * rot_x * tran_x
end