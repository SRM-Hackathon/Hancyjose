% This function returns the locations of the most 'depth' amount of maximum values and
% stores the location information inside the 'Selecteds'  

function Sel=findMax(res,depth)
Sel=zeros(1,26);
temp=1;

for j=1:depth    
    if(temp~=0)
        [temp, location]=max(res);
        if(temp~=0)
            res(location)=0;
            Sel(location)=location;
        end
    end
end
