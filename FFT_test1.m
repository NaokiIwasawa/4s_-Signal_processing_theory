clear;
%voice = 'aiueo_E.wav';
voice = 'kakikukeko_E.wav';
[x,fs] = audioread(voice);
pspectrum(x, fs,'spectrogram'); 

plot(x)
xlabel('Sample Number')
ylabel('Amplitude')