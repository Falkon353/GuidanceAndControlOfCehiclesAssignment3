rad2deg = 180/pi;
deg2rad = pi/180;

p0 = [0;0];
v0 = [6.63;0];
psi0 = 0;
r0 = 0;
c = 1; 

nc = 7.3; %rad/s

tstart = 0;
tstop = 1600; 

tsamp = 0.1;
SampleTime = 0.01;


boundary = ones(tstop/tsamp+1,1);

%%%Yaw controller
%psi_d = 15*deg2rad;

k_p_dc = 15;
k_d_dc = 110;



sim('MSFartoystyring2017.slx');
