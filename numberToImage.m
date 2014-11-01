function I = numberToImage(i)
    R = ones(100,10);
    G = ones(100,10);
    B = ones(100,10);
    white = (cat(3,R,G,B));
    
    R = zeros(100,10);
    G=zeros(100,10);
    B=ones(100,10);
    blue = cat(3,R,G,B);
    
    
    R = ones(100,10);
    G=zeros(100,10);
    B=zeros(100,10);
    red = cat(3,R,G,B);
    
    
    R = zeros(100,10);
    G = ones(100,10);
    B = zeros(100,10);
    green = cat(3,R,G,B);
    
    
    if i==1
        I = red;
    elseif i==2
        I=green;
    elseif i==3
        I = blue;
    else
        I=white;
    end;