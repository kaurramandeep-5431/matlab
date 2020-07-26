for N=1:30
T=1/1000;% time period of modulating signal t=1/fm
t=(0:T/1000:10*T);%total time
%%generation of input signal%%%
input=2*cos(2*pi*1000*t);% input cosine wave
figure(2);subplot(5,1,1);%plot figure
plot(t,input),grid on;%Representation of input signal
title('inout signal');
xlabel('time(in ms');
ylabel('amplitude in volts');
%% carrier signal generation%%
t=N+(0:T/1000:10*T);%total time changing with for loop
carrier=5*cos(2*pi*10000*t);%%carrier signal
subplot(5,1,2);%%plot multiple signal
plot(t,carrier),grid on;
title('carrier signal');
xlabel('time(in ms)');
ylabel('amplitude in volts');
%%carrier signal with jitter%%
noise=randn(1,10001);%%generation of noise
carrierj=5*cos(2*pi*10000*t)+noise;%%generation of carrier signal with jitter
distorted=carrierj/5;%%divide by amplitude signal to generate distored signal of same amplitude
subplot(5,1,3);
plot(t,carrierj),grid on;
title('carrier signal with jitter');
xlabel('time(in ms)');
ylabel('amplitude in volts');
%% Modulating signal generation%%
modulation=5*(1+0.5*cos(2*pi*1000*t).*cos(2*pi*10000*t));%%equation for the generation of signal
subplot(5,1,4);
plot(t,modulation),grid on;
title('modulated signal');
xlabel('time(in seconds)');
ylabel('amplitude in volts');
%% Modulating signal generation with noise%%
modulation=5*(1+0.5*cos(2*pi*1000*t).*distorted);%%equation to generate distorted modulating signal
subplot(5,1,5);
plot(t,modulation),grid on;
title('distorted signal');
xlabel('time(in ms)');
ylabel('amplitude in volts');
end;
