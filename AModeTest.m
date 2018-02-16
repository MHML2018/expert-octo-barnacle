clear all
N = 1000;
x = linspace(0, N, N);
var = heaviside(x-N/2);
noise = rand(1, N)/10;
sine = sin(x)/20;

sig = noise+sin+var;

actual_val = ones(1, N)+mean(noise);
mean_val = mean(sig);

hold on
plot(sig);
plot(mean_val);
plot(actual_val);
legend("Data Signal", "Mean Signal", "Mean Mode Signal")
xlabel("Sample Number")
ylabel("Sensor Value (Arb. Units)")
