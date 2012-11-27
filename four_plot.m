function four_plot(j)

H = 168;
x = 0:(2*H-1);
even = mod(x,2);
odd  = ~even;

I = 0*(1:H);
t = 1.4005*(0:(H-1));
I(1)=1;
I(j)=1;
figure; plot(t,I); xlabel('Time (ns)'); ylabel('I(t)');
y=fft(I);
f=0.714/H*(0:(H-1));
figure; plot(f,abs(y)); xlabel('Frequency (GHz)'); ylabel('I(\omega)');
I9 = 0*(1:(2*H));
t9 = 1.4005*(0:(2*H-1));
I9(1:H)=I;
I9((H+1):(2*H))=I;
figure; plot(t9,I9); xlabel('Time (ns)'); ylabel('I(t)');
y9=fft(I9);
f9=0.714/H*(0:(2*H-1));
figure; plot(f9,abs(y9)); xlabel('Frequency (GHz)'); ylabel('I(\omega)');