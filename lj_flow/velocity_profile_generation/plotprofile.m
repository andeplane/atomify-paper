rho0_002 = dlmread('velocity.0.002.txt', ' ', 4, 0);
rho0_005 = dlmread('velocity.0.005.txt', ' ', 4, 0);
rho0_01 = dlmread('velocity.0.01.txt', ' ', 4, 0);
rho0_1 = dlmread('velocity.0.10.txt', ' ', 4, 0);
rho0_5 = dlmread('velocity.0.50.txt', ' ', 4, 0);

hfig1 = figure;
hax1 = axes;
set(hfig1, 'units', 'centimeters')
set(hax1, 'fontsize', 7)

plot(rho0_002(:,4), rho0_002(:,7), 'linewidth', 1.5, 'marker', 'o');
hold on
plot(rho0_005(:,4), rho0_005(:,7), 'linewidth', 1.5, 'marker', '<');
plot(rho0_01(:,4), rho0_01(:,7), 'linewidth', 1.5, 'marker', '>');
plot(rho0_1(:,4), rho0_1(:,7), 'linewidth', 1.5, 'marker', 's');
plot(rho0_5(:,4), rho0_5(:,7), 'linewidth', 1.5, 'marker', 'd');

set(hfig1, 'position', [0 0 8.6 8.6]);
legend({'\rho_m = 0.002', '\rho_m = 0.005', '\rho_m = 0.01', '\rho_m = 0.1', '\rho_m = 0.5'});
xlabel('r')
ylabel('v(r)')