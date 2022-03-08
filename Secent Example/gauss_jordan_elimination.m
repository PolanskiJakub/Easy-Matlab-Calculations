niew=[2 1 1 -1;
    1 1 -1 1;
    1 1 1 1;
    -1 2 -1 1];
rozw = [3;
    4;
    10;
    4;];
    n=size(Rozw,1);
    x=zeros(n,1);
    rozwTrue=[Niew Rozw];
    for i=1:n
        Ab(i,:)=Ab(i,:)./Ab(i,i);
        for j=1:n
            if i ~= j
                Ab(j,:)=Ab(j,:)-Ab(i,:)*Ab(j,i);
            end
        end
    end
    rozwTrue=Ab(:,n+1)
