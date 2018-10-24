mycomplex = fft(myRecording);
mycomplex_mag = abs(mycomplex);
mycomplex_phase = angle(mycomplex);
plot(mycomplex_mag);
