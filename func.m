function result = func(A, i, p, r)
    if(p==r)
        result = A;
        return;
    end
    
    q = floor((p+r)/2);
    temp = size(A);
    if(temp(2)>=2)
        temp = A(:,i(2));
        test = false;
        for c = 1:length(temp)
            if(temp(c) ~= "")
                test = true;
            end
        end
        if(test)
            i = i + [0, 1];
        end
    end
    A(i(1),i(2)) = strcat(num2str(p), "\t", num2str(r))
    A = func(A, i+[1, 0], p, q);
    A = func(A, i+[0, 1], q+1, r);
    result = A;
end

