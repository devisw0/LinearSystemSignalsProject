fc = 440;
signal = @(t) cos(2*pi*fc*t) + cos(2*pi*(1.5*fc)*t) + cos(2*pi*(2*fc)*t);

f0 = 44000;

samplerate = 0:1/f0:(2-1/f0);

sampledSignal = signal(samplerate);

soundsc(sampledSignal);

N = 2^20;

FFT = fft(sampledSignal, N);

CTFT = fftshift(FFT);
 
frequencies = linspace(-f0/2, f0/2, N);

M = abs(CTFT);

plot(frequencies, M);

title("Approximation of CTFT using DTFT of x(t)"); 
ylabel("Magnitude");
xlabel("Frequency");