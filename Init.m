rad2deg = 180/pi;
deg2rad = pi/180;

p0 = [0;0];
v0 = [1;0];
psi0 = 0;
r0 = 0;
c = 1; 

tstart = 0;
tstop = 400; 

tsamp = 0.01;
SampleTime = 0.01;


%%%Yaw controller
psi_d = 15*deg2rad;

k_p_dc = 15;
k_d_dc = 110;



sim('MSFartoystyring.slx');


figure (1); clf;
hold on;
plot(t, psi);
hold off;
grid on;
legend('Yaw');
title('Yaw');
xlabel('time [s]'); 
ylabel('Yaw [deg]');

figure (2); clf;
hold on;
plot(t, r);
hold off;
grid on;
legend('Yaw rate');
title('Yaw rate');
xlabel('time [s]'); 
ylabel('Yaw [deg/s]');

figure (3); clf;
hold on;
plot(p(:,1), p(:,1));
hold off;
grid on;
legend('Position');
title('Position in NED fram');
xlabel('x position [m]'); 
ylabel('y position [m]');
