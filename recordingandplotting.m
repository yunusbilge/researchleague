% Record your voice for 10 seconds.
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 10);
disp('End of Recording.');

% Play back the recording.
play(recObj);

% Store data in double-precision array.
myRecording = getaudiodata(recObj);

% Plot the waveform.
plot(myRecording);
