function mesh = mean_filter(mesh,iteration,region)

% mesh = mean_filter(mesh,iteration,region)
%
% Used as part of reconstruct program, performs a mean filter on the image.
% For each node, mean of the neighbouring nodes is taken
% 
% mesh is the input mesh (workspace variable)
% iteration is the number of filters
% If a single region is defined, does not filter in that region

if nargin == 3
    for it = 1:iteration
        parfor i = 1 : length(mesh.nodes)
            if mesh.region(i) ~= region
                [ai,~]=find(mesh.elements==i);
                mua(i,1) = mean(mean(mesh.mua(mesh.elements(ai,:))));
                mus(i,1) = mean(mean(mesh.mus(mesh.elements(ai,:))));
                kappa(i,1) = mean(mean(mesh.kappa(mesh.elements(ai,:))));
            end
        end
        mesh.mua = mua;
        mesh.mus = mus;
        mesh.kappa = kappa;
    end
elseif nargin == 2
    for it = 1:iteration
        parfor i = 1 : length(mesh.nodes)
              [ai,~]=find(mesh.elements==i);
              mua(i,1) = mean(mean(mesh.mua(mesh.elements(ai,:))));
              mus(i,1) = mean(mean(mesh.mus(mesh.elements(ai,:))));
              kappa(i,1) = mean(mean(mesh.kappa(mesh.elements(ai,:))));            
        end
        mesh.mua = mua;
        mesh.mus = mus;
        mesh.kappa = kappa;
    end
else
    for it = 1:iteration
        parfor i = 1 : length(mesh.nodes)
              mua(i,1)=mesh.mua(i);
              mus(i,1)=mesh.mus(i);
              kappa(i,1)=mesh.kappa(i);
        end
        mesh.mua = mua;
        mesh.mus = mus;
        mesh.kappa = kappa;
    end
end

% for it = 1 : iteration
%   for i = 1 : length(mesh.nodes)
%     if ((nargin == 3) && (mesh.region(i) ~= region))
%       [ai,~]=find(mesh.elements==i);
%       mua(i,1) = mean(mean(mesh.mua(mesh.elements(ai,:))));
%       mus(i,1) = mean(mean(mesh.mus(mesh.elements(ai,:))));
%       kappa(i,1) = mean(mean(mesh.kappa(mesh.elements(ai,:))));
%     elseif nargin == 2
%       [ai,~]=find(mesh.elements==i);
%       mua(i,1) = mean(mean(mesh.mua(mesh.elements(ai,:))));
%       mus(i,1) = mean(mean(mesh.mus(mesh.elements(ai,:))));
%       kappa(i,1) = mean(mean(mesh.kappa(mesh.elements(ai,:))));
%     else
%       mua(i,1)=mesh.mua(i);
%       mus(i,1)=mesh.mus(i);
%       kappa(i,1)=mesh.kappa(i);
%     end
%   end
%   mesh.mua = mua;
%   mesh.mus = mus;
%   mesh.kappa = kappa;
% end
