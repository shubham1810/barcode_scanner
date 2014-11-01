function image2number()

filename = uigetfile;
I = imread(filename);
imshow(I);
red=0;white=0;
green=0;
blue=0;
[a,b,c] = size(I);
n=b/10;
s=[];
for i=1:1:n
    A=I(1:a,((i-1)*10+1):10*i,1);               %store the red component of each bar of width 10
    B=I(1:a,((i-1)*10+1):10*i,2);               %similarly for green and in next line for blue
    C=I(1:a,((i-1)*10+1):10*i,3);
    for j=1:1:100
        for k=1:1:10
            if(A(j,k,1)>200 && B(j,k,1)>200 && C(j,k,1)>200)
                white = white+1;
            elseif(A(j,k,1)>200)
                red=red+1;
            elseif (B(j,k,1)>200)
                green=green+1;
            elseif (C(j,k,1)>200)
                blue=blue+1;
            end
        end
    end
    if(red>700)
        s=[s 1];
    elseif(blue>700)
        s=[s 3];
    elseif(green>700)
        s=[s 2];
    elseif(white>700)
        s=[s 0];
    end
    red=0;green=0;blue=0;white=0;
end
%now decode it
decode(s)