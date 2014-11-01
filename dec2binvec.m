function A = dec2binvec(x)

x=fliplr(dec2bin(x));
y=[x '0'];
A = y;