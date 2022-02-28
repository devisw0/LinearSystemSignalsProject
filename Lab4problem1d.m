halfNyquist = 880;

sample = 0:1/halfNyquist:(0.05-1/halfNyquist);

sampledSignal = signal(sample);

upsampledSignal = upsample(sampledSignal,50);
 
N = 2^20;

FFT = fft(upsampledSignal, N);

CTFT = fftshift(FFT);

f = (0:length(CTFT)-1)*2*pi/length(CTFT); 

frequencies = pi - f;

plot(frequencies, abs(CTFT));
set(gca,'XTickLabel',[-pi,-(3*pi)/4,-pi/2,-pi/4,0,pi/4,pi/2,(3*pi)/4,pi]);
ax.XTickLabel = {'-pi,-(3*pi)/4,-pi/2,-pi/4,0,pi/4,pi/2,(3*pi)/4,pi'};
xlabel("Frequency");
ylabel("Magnitude"); 
title("Magnitude of DTFT of signal");