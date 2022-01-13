clear;
[y,fs] = audioread('aiueo_E.wav');
%[y,fs] = audioread('kakikukeko_E.wav');
%[y,fs] = audioread('E3-165Hz.wav');

SNR = 70;   %aiueoは57 kakikukekoは70が最適

spectrogram(y, kaiser(800,5),750,3000,fs,'yaxis'); %基本的なパワースペクトル
%spectrogram(y, kaiser(800,5),750,3000,fs,'MinThreshold',-SNR,'yaxis');    %-SNRdB以下をゼロとする　

%------------------------------------------------------------------
%窓関数のウィンドウ長さを大きくすると周波数ごとの違いがハッキリする
%ウィンド長とオーバーラップが近いと全体が高精細になる
%形状パラメータを大きくすると時間の精細度が上がるが周波数分解度が低下する
%第4引数はFFTのサイズを示し高くすると高精度な周波数が分かる10000を超えるとパソコン落ちる
%------------------------------------------------------------------

ylim([0 2])  %縦軸指定 （E3=165なのでその範囲が拡大して見れる値は0～0.3）

%view(-45,65)   %斜め上から3D表示
