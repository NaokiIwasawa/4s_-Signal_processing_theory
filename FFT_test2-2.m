clear;
fs = 44100;
[y] = audioread('aiueo_E.wav');
pspectrum(y,fs,'spectro','freq',[0 5000]);