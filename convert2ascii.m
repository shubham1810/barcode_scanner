
function convert2ascii(str)
ascii=double(str);
l=length(str);
bin=dec2bin(ascii);
m=size(bin);
n=m(1);
s=m(2);
r=s;
z=ceil(s/2);

for i=1:n
    z=ceil(s/2);
    r=s;
    while(r>0)
        if(r>1)
            k(i,z)=bin2dec(bin(i,r-1:r));
           
        else
            k(i,z)=r;
            
        end;
        z=z-1;
        r=r-2;
    end;
    
end;
i=0;
j=0;
for i=1:n
    fprintf(str(i));
    fprintf('-->');
    disp(k(i,:));
    fprintf('\n');
    filename = uiputfile;
    I = colorEncode(k(i,:));
    imwrite(I,filename,'png');
    figure;imshow(I);
end;
