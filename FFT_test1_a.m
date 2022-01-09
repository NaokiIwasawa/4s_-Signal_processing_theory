clear;
%voice = 'aiueo_E.wav';
voice = 'kakikukeko_E.wav';
voice = 'E3-165Hz.wav';

[x,fs] = audioread(voice);
pspectrum(x, fs,'spectrogram'); 

%x = x(2e4:5e4);
%x = x(5.2e4:7.5e4);
%x = x(7.8e4:10.2e4);
%x = x(10.5e4:13e4);
x = x(13.3e4:15.2e4);

plot(x)
xlabel('Sample Number')
ylabel('Amplitude')