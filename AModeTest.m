clear all
N = 1000;
Shift = N/5;
x = linspace(0, N, N);
var = heaviside(x-Shift);
noise = rand(1, N)/10;
sine = sin(x)/20;

sig = noise+sine+var;

actual_val = ones(1, N)+mean(noise);
mean_val = ones(1, N)*mean(sig);

hold on
plot(sig);
plot(mean_val);
plot(actual_val);
ha = area([Shift N], [10 10], 'LineStyle', 'none');
set(ha, 'FaceColor', 'r');
alpha(0.15);
axis([0 1000 -0.2 1.2])
legend("Data Signal", "Mean Signal", "MeanMode Signal", "Mode Area", "Location", "best")
xlabel("Sample Number")
ylabel("Sensor Value (Arb. Units)")
