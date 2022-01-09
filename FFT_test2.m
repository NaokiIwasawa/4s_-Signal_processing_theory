clear;

[y1,fs1] = audioread('aiueo_E.wav');
%[y2,fs2] = audioread('kakikukeko_E.wav');
%subplot(2,1,1);

%plot(y1);

%plot(y2);
xlabel('time');
ylabel('shinpuku');
f = 44;
A = 1.0;
%fs1=8000;

%timeline = 0 : 1/fs : length;

spectrogram(y1, kaiser(256,5),250,1024,fs1,'yaxis');
%spectrogram(y2, kaiser(256,5),250,1024,fs2,'yaxis');
%view(-45,65)