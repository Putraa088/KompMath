clc
clear

%% 1. Parametric Plot (2D)
t = linspace(0, 10*pi, 1000);
x = t.*cos(t);
y = t.*sin(t);
figure;
plot(x, y, 'r-', 'LineWidth', 1.5);
title('1. Parametric Spiral Plot');
xlabel('x'); ylabel('y');
axis equal;

%% 2. Bubble Chart (2D)
x = rand(1, 20)*10;
y = rand(1, 20)*10;
sz = randi([10, 200], 1, 20);
colors = rand(20, 3);
figure;
scatter(x, y, sz, colors, 'filled');
title('2. Bubble Chart');
xlabel('X'); ylabel('Y');

%% 3. Stacked Bar Plot (2D)
data = [5 10 15; 10 20 30; 15 25 35; 20 30 40];
figure;
bar(data, 'stacked');
title('3. Stacked Bar Plot');
xlabel('Group'); ylabel('Values');
legend('Series 1', 'Series 2', 'Series 3');

%% 4. 3D Histogram
x = randn(10000,1);
y = 2*randn(10000,1) + 1;
figure;

if exist('histogram2', 'file')
    histogram2(x, y, 'BinWidth', [0.5 0.5], 'FaceColor', 'flat');
else
 
    hist3([x y], [30 30]);
    set(get(gca,'child'),'FaceColor','interp','CDataMode','auto');
end

title('4. 3D Histogram');
xlabel('X'); ylabel('Y'); zlabel('Count');
colorbar;

%% 5. Exploded Pie Chart (2D)
data = [15 30 20 35];
explode = [0 1 0 0];
figure;
pie(data, explode, {'Q1', 'Q2', 'Q3', 'Q4'});
title('5. Exploded Pie Chart');

%% 6. Stacked Area Plot (2D)
x = 1:10;
y = [1 2 3 4 5 6 7 8 9 10; 
     2 3 4 5 6 7 8 9 10 11;
     3 4 5 6 7 8 9 10 11 12];
figure;
area(x, y');
title('6. Stacked Area Plot');
xlabel('X'); ylabel('Y');
legend('Series 1', 'Series 2', 'Series 3');

% %  7. Polar Plot (2D)
theta = linspace(0, 2*pi, 200);
rho = 1 + 0.5 * sin(3*theta);  % fungsi polar

%% 8. 3D Surface with Lighting
[x, y] = meshgrid(-3:0.1:3);
z = peaks(x, y);
figure;
surf(x, y, z, 'FaceColor', 'interp', 'EdgeColor', 'none');
light;
lighting gouraud;
title('8. 3D Surface with Lighting');
xlabel('X'); ylabel('Y'); zlabel('Z');

%% 9. 3D Stem Plot
x = 0:0.5:10;
y = sin(x);
z = cos(x);
figure;
stem3(x, y, z, 'filled');
title('9. 3D Stem Plot');
xlabel('X'); ylabel('Y'); zlabel('Z');

%% 10. 3D Bar Plot
x = [1 2 3 4 5];
y = [1 2 3];
z = [1 2 3 4 5; 2 3 4 5 6; 3 4 5 6 7];
figure;
bar3(z);
title('10. 3D Bar Plot');
xlabel('X'); ylabel('Y'); zlabel('Z');

%% 11. Discrete Data Stem Plot
x = 0:0.5:4*pi;
y = exp(-0.2*x).*sin(x);
figure;
stem(x, y, 'LineWidth', 2, 'Marker', 'd');
title('11. Decaying Sine Stem Plot');
xlabel('Time'); ylabel('Amplitude');

%% 12. Step Plot with Multiple Series
x = linspace(0,10,20);
y1 = sin(x);
y2 = cos(x);
figure;
stairs(x, y1, 'r-', 'LineWidth', 2);
hold on;
stairs(x, y2, 'b--', 'LineWidth', 2);
title('12. Multiple Series Step Plot');
legend('sin(x)', 'cos(x)');

%% 13. Errorbar with Asymmetric Errors
x = 1:5;
y = [10 20 30 20 10];
errlow = [1 2 3 2 1];
errhigh = [2 3 4 3 2];
figure;
errorbar(x, y, errlow, errhigh, 'o');
title('13. Asymmetric Error Bars');
xlabel('X'); ylabel('Y');

%% 14. Log Scale Plot with Grid
x = logspace(-1, 2, 100);
y = x.^3;
figure;
loglog(x, y, 'LineWidth', 2);
grid on;
title('14. Log-Log Plot with Grid');
xlabel('X'); ylabel('X^3');

%% 15. Polar Histogram (Compatible with all versions)
theta = randn(1000,1)*pi;
figure;

% Convert to Cartesian coordinates for rose plot
rose(theta, 20); 
h = findobj(gca, 'Type', 'line');
set(h, 'Color', 'm', 'LineWidth', 1.5);

title('15. Polar Histogram');

%% 16. Contour Plot with Labels
[x, y] = meshgrid(-3:0.1:3);
z = x.*exp(-x.^2 - y.^2);
figure;
[C, h] = contour(x, y, z);
clabel(C, h);
title('16. Labeled Contour Plot');
xlabel('X'); ylabel('Y');

%% 17. Streamslice Plot (Vector Field)
[x, y] = meshgrid(-2:0.2:2);
u = -y;
v = x;
figure;
streamslice(x, y, u, v);
title('17. Streamslice Plot');
xlabel('X'); ylabel('Y');

%% 18. Feather Plot
theta = linspace(0, 2*pi, 20);
u = sin(theta);
v = cos(theta);
figure;
feather(u, v);
title('18. Feather Plot');
