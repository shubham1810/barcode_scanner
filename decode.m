function decode(s)
x=[];
n=length(s);
for i=1:4:n
    k=s(i:i+3);
    for j=1:4
        if(k(j)==0)
            x=[x '00'];
        elseif(k(j)==1)
            x=[x '01'];
        elseif(k(j)==2)
            x=[x '10'];
        else
            x=[x '11'];
        end
    end
end
a=[];
for i=1:8:length(x)
    k=fliplr(x(i:i+6));
    
    k=char(bin2dec(k));
    a=[a k];
end
a