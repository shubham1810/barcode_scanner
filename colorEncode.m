function colorEncode(s(:))

J=[];
for i=1:length(s)
    k = numberToImage(s(i));
    J = horzcat(J,k);
end;
I=J;
