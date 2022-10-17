function HTM = HM(a, alpha, d, theta)
    
    rz = [rotz(theta); [0 0 0]];
    rz = cat(2,rz,transpose([0 0 0 1]));
    tz = transl(0,0,d);
    
    rx = [rotx(alpha); [0 0 0]];
    rx = cat(2,rx,transpose([0 0 0 1]));
    tx = transl(a,0,0);
   
    HTM =  rz*tz*rx*tx;
end