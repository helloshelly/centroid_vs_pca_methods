function labels = pca(A, T)
    labels = zeros(size(A, 1), 1);
    
    for i=1:size(A, 1)
        z = double(A(i,:))';
        dist = zeros(10,1);
        min = 1;
        
        for k=1:10
            Uk = T(:,:,k);
            dist(k) = norm( z - Uk*(Uk'*z) );
            
            temp = dist(k);
           
            if temp < dist(min)
                min = k;
            end
        end
        
        labels(i) = min - 1;
    end
end