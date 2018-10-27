 clear sound;
 clear;
 close all;
 [x,fs] = audioread('1-08 Wings of piano.wav');
 a = x*2
 b = x/2;
 c = fs*2;
 d = fs/2;
 audiowrite('volumeup.wav',a,fs);
 audiowrite('volumedown.wav',b,fs);
 audiowrite('speedup.wav',x,c);
 audiowrite('slowdown.wav',x,d);