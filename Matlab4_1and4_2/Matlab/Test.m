%run bell function and create array of values

% ff = frequency vector (containing fc and fm)
ff = [110,220];
% Io = scale factor for modulation index
Io = 10;
% tau = decay parameter for A(t) and I(t)
tau = 2;
% dur = duration (in sec.) of the output signal
dur = 6;
% fsamp = sampling rate
fsamp = 11025;


y = bell(ff,Io,tau,dur,fsamp);

%play the sound (array and sampling rate)
soundsc(y, fsamp);

%plot the figure
figure(1);
plot(y);
set(gca,'FontSize',14); %set font size
title('Amplitude vs. Sample','FontSize',14); %Title
xlabel('Sample', 'FontSize',14);% X-axis Label
ylabel('Amplitude', 'FontSize',14);% Y-axis Label
drawnow; %ensure drawings are complete

