pxx = pwelch(myRecording,[],[],[],8000);
plot(pxx)
title('Welch Power Spectral Density Estimate')
ylabel('Power/Frequency dB/Hz')
xlabel('Frequency Hz')