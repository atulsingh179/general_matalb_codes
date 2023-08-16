function[z] = zcd(y,a,l)
% a is the starting index wherefrom zero crossigns detection will start
% l is the end index up to which zero crossing detection will be performed
z = [0];
len = length(y);
x = y(a:l);
j = 1
for i = 1:length(x)-1
    a = x(i)*x(i+1);
    if a<0
        z(j) = i;
        j = j+1;
    end
end
% z is the instants of zero crossing
