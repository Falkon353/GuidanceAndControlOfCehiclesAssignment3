figure (1); clf;
hold on;
plot(p(:,2),p(:,1),'b');
plot(WP(2,:),WP(1,:),'r');
hold off;
legend('Position','path');
title('Position');
grid on;
xlabel('Easth [m]'); 
ylabel('North [m]');

%pathplotter(p(:,1), p(:,2),  psi, tsamp, 2, tstart, tstop, 0, WP)

%course, heading, course_d crabAngle
U = sqrt(v(:,2).^2+v(:,1).^2);
beta = asin(v(:,2)./U)*rad2deg;
chi = beta-psi; 

figure (2); clf;
subplot(2,1,1);
hold on;
plot(t,chi,'b');
plot(t,chi_d, '--r');
plot(t,psi,'y');
hold off;
legend('Course', 'Course D', 'Yaw');
title('Course and Yaw');
grid on;
xlabel('time [s]'); 
ylabel('Angel [deg]');
subplot(2,1,2);
hold on;
plot(t,beta,'b');
hold off;
legend('Crabangel');
title('Crabangel');
grid on;
xlabel('time [s]'); 
ylabel('Angel [deg]');