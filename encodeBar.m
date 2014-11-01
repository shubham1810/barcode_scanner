str = input('Enter a string:','s');
n=length(str);
numvect = zeros(1,4*n);

for i=1:n
    temp = unicode2native(str(i));
    temp = double(temp);
    binvecttemp = dec2binvec(temp);
    m= 4*i - 3;
    for j=1:2:8
        if (binvecttemp(j) == '0' && binvecttemp(j+1)=='0')
            numvect(m)=0;
        elseif (binvecttemp(j)=='0' && binvecttemp(j+1)=='1')
            numvect(m)=1;
        elseif(binvecttemp(j)=='1' && binvecttemp(j+1)=='0')
            numvect(m)=2;
        elseif (binvecttemp(j)=='1' && binvecttemp(j+1)=='1')
            numvect(m)=3;
        end
        m=m+1;
    end
end
y = numvect;
J=[];
for i=1:length(numvect)
    k = numberToImage(numvect(i));
    J = horzcat(J,k);
end;
I=J;
filename = uiputfile;
imwrite(I,filename, 'png');
figure;imshow(I);
