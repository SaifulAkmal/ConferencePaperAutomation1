s = tf('s');
Plant = 31.81/(s^2 + 14.21*s + 30.99);

%controller
Kp = 55.8746;
Ki = 225.1913;
Kd = 3.4649;
C = Kp + Ki/s + Kd*s;

figure;
subplot(2,2,1);
step(Plant)
grid

subplot(2,2,2);
step(feedback(Plant*C,1),0.2)
grid

subplot(2,2,3);
step(feedback(Plant,C))
grid

Kp = 15.6019;
Ki = 73.9812;
Kd = 0.67108;
C = Kp + Ki/s + Kd*s;

figure;
subplot(2,2,1);
step(Plant)
grid

subplot(2,2,2);
step(feedback(Plant*C,1))
grid

subplot(2,2,3);
step(feedback(Plant,C))
grid