%%  FM Synthesis of Instrument Sounds: 4.1 Generating the Bell Envelopes
%The following code is a function that creates a Bell Sound

function xx = bell(ff, Io, tau, dur, fsamp)
%BELL produce a bell sound
%
% usage: xx = bell(ff, Io, tau, dur, fsamp)
%
% where: ff = frequency vector (containing fc and fm)
% Io = scale factor for modulation index
% tau = decay parameter for A(t) and I(t)
% dur = duration (in sec.) of the output signal
% fsamp = sampling rate

%fc is held in ff(1,1)
%fm is held in ff(1,2)

Psi_m = -pi/2; %arbitrary phase constant, -pi/2 starts the sound at amplitude zero
Psi_c = -pi/2; %arbitrary phase constant, -pi/2 starts the sound at amplitude zero
t = 0:1/fsamp:dur; %create time array, duration divided by sampling rate
BEnvelope = bellenv(tau, dur, fsamp); %call bell envelope function (exponential decay)

%produce bell sound. This is essentially a cosine of a cosine with a two
%exponential decays added
xx = BEnvelope.*cos(2*pi*ff(1,1)*t+Io*BEnvelope.*cos(2*pi*ff(1,2)*t+Psi_m)+Psi_c);

end