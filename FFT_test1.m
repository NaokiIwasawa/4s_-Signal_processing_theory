clear;
%voice = 'aiueo_E.wav';
voice = 'kakikukeko_E.wav';
[x,fs] = audioread(voice);
pspectrum(x, fs,'spectrogram'); 
x = x(2e4:5e4);

plot(x)
xlabel('Sample Number')
ylabel('Amplitude')