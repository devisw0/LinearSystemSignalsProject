f0 = 44000;

halfNyquist = 880;

original =0:1/f0:(0.05-1/f0);

originalsignal = signal(original);

soundsc(originalsignal);
 
sample = 0:1/halfNyquist:(0.05-1/halfNyquist);

sampledSignal = signal(sample);

upsampledSignal = upsample(sampledSignal,50);

soundsc(upsampledSignal);
 
plot(original, originalsignal);
hold on
stem(original, upsampledSignal);
xlabel("Samples");
ylabel("Sampled Signal");
title("Sampled Signal at 44000hz and half the Nyquist rate");