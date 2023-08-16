function[z] = zcd(x,a,l) % x is the input signal
% a is the starting index wherefrom zero crossigns detection will start
% l is the end index up to which zero crossing detection will be performed
z = [0];
x = y(a:l);
j = 1; i =1;
x_len = length(x);
while i<x_len
    if abs(x(i))<1e-10 %removes the instances when a small values of same sign as previous value fall near to zero
        x(i) = 0;
    end
    if abs(x(i+1))<1e-10
        x(i+1) =0;
    end
    a = x(i)*x(i+1);
    if a<0 || a==0
        z(j) = i;
        j = j+1;
        i = i+1; % removes the instances where above condition satisfies for two consecutive values
    end
    i=i+1;
end
end
% z is the ZCD instants
