function n = cluster(vector,centers)
    n = 1;
    minimum = d(vector,centers{1});
    for i = 2:length(centers)
        temp = d(vector,centers{i});
        if temp < minimum
            minimum = temp;
            n = i;
        end
    end
end