function HTM = HM(a, alpha, d, theta)
    
    rz = [rotz(theta); [0 0 0]];
    rz = cat(2,rz,transpose([0 0 0 1]));
    tz = transl(0,0,d);
    
    tx = transl(a,0,0);
    rx = [rotx(alpha); [0 0 0]];
    rx = cat(2,rx,transpose([0 0 0 1]));

    HTM =  rz*tz*tx*rx;
end