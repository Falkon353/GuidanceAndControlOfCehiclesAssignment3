rad2deg = 180/pi;
deg2rad = pi/180;

p0 = [0;0];
v0 = [3;0];
psi0 = 0;
r0 = 0;
c = 1; 

%nnc = 7.3; %rad/s

tstart = 0;
tstop = 2500; 

tsamp = 0.1;
SampleTime = 0.01;


boundary = ones(tstop/tsamp+1,1);

%%%Yaw controller
%psi_d = 15*deg2rad;

k_p_dc = 15;
k_d_dc = 110;


%%Surge controller
k_p_nc = 10;
%k_d_nc = 10;
k_i_nc = 1;


sim('MSFartoystyring2017.slx');

figure (1); clf;
hold on;
plot(t,v(:,1),'b');
hold off;
legend('Surg');
title('Surg');
grid on;
xlabel('time [s]'); 
ylabel('Surg [m/s]');

figure (2); clf;
hold on;
plot(t,n_c,'b');
hold off;
legend('Shaft input');
title('Shaft input');
grid on;
xlabel('time [s]'); 
ylabel('shaft input [rad/s]');
