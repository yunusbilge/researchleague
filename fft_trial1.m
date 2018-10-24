L=10;
Fs=4000;

mycomplex = fft(myRecording); %getting fft of my recording

mycomplex_mag2 = abs(mycomplex); %getting two-sided spectrum

mycomplex_phase = angle(mycomplex); %phase of the signal

%computing the single-sided spectrum mycomplex_mag based on mycomplex_mag2 and the even-valued signal length L.
mycomplex_mag = mycomplex_mag2(1:L/2+1); 
mycomplex_mag(2:end-1) = 2*mycomplex_mag(2:end-1); 

%plotting
f = Fs*(0:(L/2))/L;
plot(f,mycomplex_mag) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
