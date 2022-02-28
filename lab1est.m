function[L, theta] = lab1est(A,B,y1,y2) 

fs = 44.1e3; %sampling rate

cs = 333.333; %speed of sound

t=0:(1/fs):0.5;

[c, lags] = xcorr(y1, y2);

[m,i] = max(c); %m = max value of c, i = index of c where m is located

taupeak = lags(i)/fs; %tpeak = time of maximum of c = index of lags/ sampling rate

%tpeak = Tau1 - Tau2

L=B/sqrt(1/((taupeak)^2*(cs/A)^2)-1);

theta = asin((cs*(taupeak))/A);

end

