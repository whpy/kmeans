function [Clusters,Centers] = kmeans(datas,c_num)
    n = c_num;
    centers = {};
    temp = randperm(size(datas,2));
    for i = 1:n
        centers{i} = datas(:,temp(i));
    end
    
    for batch = 1:100
        clusters = {};
        for sign = 1:n
            clusters{sign} = [];
        end
        for col = 1:size(datas,2)
            xsign = cluster(datas(:,col),centers);
            clusters{xsign} = [clusters{xsign},datas(:,col)];
        end
        for c = 1:n
            centers{c} = sum(clusters{c},2)/size(clusters{c},2);
        end
    end
    Centers = centers;
    Clusters = clusters; 
end

