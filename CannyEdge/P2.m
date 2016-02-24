I = [0 1 0.5 0.5 0 0.5 0.5 1 0 1 1;
     0 1 0.5 0.5 0 0.5 0.5 1 0 1 1;
     1 1 0.5 0.5 0 0.5 0.5 1 0 1 0;
     1 1 0   1   1  0   0  1 1 0 0;
     1 1 0.5 0.5 0 0.5  1  1 1 0 0;
     0 0 0.5 0.5 0 0.5  1  1 0 0 1;
     0 0 0.5 0.5 1  1   1  1 1 0 0];
a = 0.4;
Gx = [1/4-a/2, 1/4, a, 1/4, 1/4-a/2];
Gy = Gx';
delta_x = [0, -1];
delta_y = delta_x';

J1 = conv2mirror(conv2mirror(I,Gx,-2,2,0,0),Gy,0,0,-2,2);
J2 = conv2mirror(I,conv2(Gx,Gy),-2,2,-2,2);

isequal(J1, J2)