figure (1); clf;
subplot(2,1,1);
hold on;
plot(t,psi,'b');
plot(t,psi_d, '--r');
hold off;
legend('Yaw', 'Yaw D');
title('Yaw');
grid on;
xlabel('time [s]'); 
ylabel('Yaw [deg]');
subplot(2,1,2);
hold on;
plot(t,psi_delta);
hold off;
legend('Yaw difference');
title('Yaw difference');
grid on;
xlabel('time [s]'); 
ylabel('Yaw difference [deg]');


figure (2); clf;
subplot(2,1,1);
hold on;
plot(t, r, 'b');
plot(t,r_d, '--r');
hold off;
grid on;
legend('Yaw Rate', 'Yaw Rate D');
title('Yaw Rate');
xlabel('time [s]'); 
ylabel('Yaw [deg/s]');
subplot(2,1,2);
hold on;
plot(t,r_delta);
hold off;
grid on;
legend('Yaw Rate difference');
title('Yaw Rate difference');
xlabel('time [s]'); 
ylabel('Yaw Rate difference [deg/s]');

figure (3); clf;
hold on;
plot(t,delta_c,'b');
plot(t,25*boundary,'-.r');
plot(t,-25*boundary,'-.r');
hold off;
grid on;
legend('Rudder input','Saturation limits');
title('Rudder input');
xlabel('time [s]'); 
ylabel('Ruder input [deg]');

hgexport(1,'./Figures/HeadingAutoPilot/YawHeadingAutoPilot');
hgexport(2,'./Figures/HeadingAutoPilot/YawRateHeadingAutoPilot');
hgexport(3,'./Figures/HeadingAutoPilot/Delta_cHeadingAutoPilot');
