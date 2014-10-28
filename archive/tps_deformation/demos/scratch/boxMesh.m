v1 = ...
[[-1.0000  ,  1.0000  ,  1.0000];
 [-0.6000  ,  1.0000  ,  1.0000];
 [-0.2000  ,  1.0000  ,  1.0000];
 [ 0.2000  ,  1.0000  ,  1.0000];
 [ 0.6000  ,  1.0000  ,  1.0000];
 [ 1.0000  ,  1.0000  ,  1.0000];
 [-1.0000  ,  0.6000  ,  1.0000];
 [-0.6000  ,  0.6000  ,  1.0000];
 [-0.2000  ,  0.6000  ,  1.0000];
 [ 0.2000  ,  0.6000  ,  1.0000];
 [ 0.6000  ,  0.6000  ,  1.0000];
 [ 1.0000  ,  0.6000  ,  1.0000];
 [-1.0000  ,  0.2000  ,  1.0000];
 [-0.6000  ,  0.2000  ,  1.0000];
 [-0.2000  ,  0.2000  ,  1.0000];
 [ 0.2000  ,  0.2000  ,  1.0000];
 [ 0.6000  ,  0.2000  ,  1.0000];
 [ 1.0000  ,  0.2000  ,  1.0000];
 [-1.0000  , -0.2000  ,  1.0000];
 [-0.6000  , -0.2000  ,  1.0000];
 [-0.2000  , -0.2000  ,  1.0000];
 [ 0.2000  , -0.2000  ,  1.0000];
 [ 0.6000  , -0.2000  ,  1.0000];
 [ 1.0000  , -0.2000  ,  1.0000];
 [-1.0000  , -0.6000  ,  1.0000];
 [-0.6000  , -0.6000  ,  1.0000];
 [-0.2000  , -0.6000  ,  1.0000];
 [ 0.2000  , -0.6000  ,  1.0000];
 [ 0.6000  , -0.6000  ,  1.0000];
 [ 1.0000  , -0.6000  ,  1.0000];
 [-1.0000  , -1.0000  ,  1.0000];
 [-0.6000  , -1.0000  ,  1.0000];
 [-0.2000  , -1.0000  ,  1.0000];
 [ 0.2000  , -1.0000  ,  1.0000];
 [ 0.6000  , -1.0000  ,  1.0000];
 [ 1.0000  , -1.0000  ,  1.0000]];


f1 = ...
[[ 1  ,   2  ,   7];
 [ 8  ,   2  ,   7];
 [ 2  ,   3  ,   8];
 [ 9  ,   3  ,   8];
 [ 3  ,   4  ,   9];
 [10  ,   4  ,   9];
 [ 4  ,   5  ,  10];
 [11  ,   5  ,  10];
 [ 5  ,   6  ,  11];
 [12  ,   6  ,  11];
 [ 7  ,   8  ,  13];
 [14  ,   8  ,  13];
 [ 8  ,   9  ,  14];
 [15  ,   9  ,  14];
 [ 9  ,  10  ,  15];
 [16  ,  10  ,  15];
 [10  ,  11  ,  16];
 [17  ,  11  ,  16];
 [11  ,  12  ,  17];
 [18  ,  12  ,  17];
 [13  ,  14  ,  19];
 [20  ,  14  ,  19];
 [14  ,  15  ,  20];
 [21  ,  15  ,  20];
 [15  ,  16  ,  21];
 [22  ,  16  ,  21];
 [16  ,  17  ,  22];
 [23  ,  17  ,  22];
 [17  ,  18  ,  23];
 [24  ,  18  ,  23];
 [19  ,  20  ,  25];
 [26  ,  20  ,  25];
 [20  ,  21  ,  26];
 [27  ,  21  ,  26];
 [21  ,  22  ,  27];
 [28  ,  22  ,  27];
 [22  ,  23  ,  28];
 [29  ,  23  ,  28];
 [23  ,  24  ,  29];
 [30  ,  24  ,  29];
 [25  ,  26  ,  31];
 [32  ,  26  ,  31];
 [26  ,  27  ,  32];
 [33  ,  27  ,  32];
 [27  ,  28  ,  33];
 [34  ,  28  ,  33];
 [28  ,  29  ,  34];
 [35  ,  29  ,  34];
 [29  ,  30  ,  35];
 [36  ,  30  ,  35]];

% mesh = struct('v', v, 'f', f);
% displayMesh(mesh);

theta = pi/2;

rot90 = [cos(theta) -sin(theta); sin(theta) cos(theta)];

rotYZ90 = [[1 0 0]; [0; 0] rot90];
rotYX90 = [[rot90(1, 1) 0 rot90(1, 2)]; [0 1 0]; [rot90(2, 1) 0 rot90(2, 2)]];

v2 = (rotYX90^1*v1')';
v3 = (rotYX90^2*v1')';
v4 = (rotYX90^3*v1')';
v5 = (rotYZ90^1*v1')';
v6 = (rotYZ90^3*v1')';

f2 = f1+36;
f3 = f1+36*2;
f4 = f1+36*3;
f5 = f1+36*4;
f6 = f1+36*5;

v = [v1;v2;v3;v4;v5;v6];
f = [f1;f2;f3;f4;f5;f6];

mesh = struct('v', v, 'f', f);
displayMesh(mesh);