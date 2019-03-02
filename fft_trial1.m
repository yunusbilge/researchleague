filename = 'mydata.xlsx';
myRecording = xlsread(filename,'B:B'); %taking the data from .xlsx file
myRecording = myRecording(1:1280);
L = length(myRecording);  %length of the signal (miliseconds)
Fs = 25600;
n = 2^nextpow2(L);
mycomplex = fft(myRecording,n); %getting fft of my recording

mycomplex_mag2 = abs(mycomplex); %getting two-sided spectrum

mycomplex_phase = angle(mycomplex); %phase of the signal
%plotting
f = Fs*(0:(n/2))/n;
plot(f,mycomplex_mag2(1:n/2+1)) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
