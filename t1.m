 clear sound;
 clear;
 close all;
 
 [double_voice_message,fs]=audioread('1-08 Wings of piano.wav');
 message = (double_voice_message(:,1))';
 n = length(message);
 t =(0:length(message)-1)/fs;
 f=20;
 w= 2*pi*f;
 phi = 0;
 A =1;
 Ka =1;
 Carrier_signal = A.*(1+Ka.*message).*cos(w*t+phi);
 Cn = length(Carrier_signal);
 subplot(2,2,1);
 plot(t,message);
 title('��J�i��');
 xlabel('�ɶ�');
 ylabel('���T');
 
 f = fftshift(fft(message));
 v = linspace(-fs/2, fs/2, n);
 
 subplot(2,2,3);
 plot(v,abs(f));
 axis([-5000, 5000, -inf, inf]);
 title('��J�W��');
 xlabel('�W�v');
 ylabel('���T');
 
 subplot(2,2,2);
 plot(t,Carrier_signal);
 title('��X�i��');
 xlabel('�ɶ�');
 ylabel('���T');
 
 Cf = fftshift(fft(Carrier_signal));
 Cv = linspace(-fs/2, fs/2, Cn);
 
 subplot(2,2,4);
 plot(Cv,abs(Cf));
 axis([-5000, 5000, -inf, inf]);
 title('��X�W��');
 xlabel('�W�v');
 ylabel('���T');