clear;
%fs = 44100
%[y,fs] = audioread('aiueo_E.wav');
[y,fs] = audioread('E3-165Hz.wav');
%f = 44;
%A = 1.0;
SNR = 57;

%pspectrum(y,fs,'spectrogram','FrequencyLimits',[0 22500]);
%spectrumに時間変化を加えるとspectrogram
%spectrogram(y, kaiser(256,5),250,1024,fs,'yaxis');     %参考の初期　きめ細かく良き


spectrogram(y, kaiser(800,5),750,3000,fs,'yaxis');
%spectrogram(y, kaiser(800,5),750,3000,fs,'MinThreshold',-SNR,'yaxis');    %-SNRdB以下をゼロとする　
%窓関数のウィンドウ長さを大きくすると周波数ごとの違いがハッキリする
%ウィンド長とオーバーラップが近いと全体が高精細になる
%形状パラメータを大きくすると時間の精細度が上がるが周波数分解度が低下する
%第4引数はFFTのサイズを示し高くすると高精度な周波数が分かる10000を超えるとパソコン落ちる

ylim([0 2])  %縦軸指定 E3=165なのでその範囲が拡大されて見れる値0～0.3を指定

%view(-45,65)

% メモ　kaiser(800,5),750,3000 一番良き
% メモ　kaiser(800,17),500,30000　ｄBのもと良き