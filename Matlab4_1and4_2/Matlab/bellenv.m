function yy = bellenv(tau, dur, fsamp)
%BELLENV produces envelope function for bell sounds
%
% usage: yy = bellenv(tau, dur, fsamp);
%
% where tau = time constant
% dur = duration of the envelope
% fsamp = sampling frequency
% returns:
% yy = decaying exponential envelope
% note: produces exponential decay for positive tau

%create time array (duration divided by sampling frequency)
t = 0:dur/fsamp:dur;
%calculate array of exponentially decaying values (since tau is positive)
yy = exp(-t/tau);
end
