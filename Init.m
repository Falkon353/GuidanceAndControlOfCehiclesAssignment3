rad2deg = 180/pi;
deg2rad = pi/180;

p0 = [1000;700];
v0 = [6.63;0];
psi0 = 60*pi/180;
r0 = 0;
c = 1; 

%nnc = 7.3; %rad/s

tstart = 0;
tstop = 25000; 

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

% figure (1); clf;
% hold on;
% plot(p(1,:),p(:,1),'b');
% plot(WP(2,:),WP(1,:),'r');
% hold off;
% legend('Position','path');
% title('Position');
% grid on;
% xlabel('Easth [m]'); 
% ylabel('North [m]');
% 
% figure (2); clf;
% hold on;
% plot(t,n_c,'b');
% hold off;
% legend('Shaft input');
% title('Shaft input');
% grid on;
% xlabel('time [s]'); 
% ylabel('shaft input [rad/s]');
