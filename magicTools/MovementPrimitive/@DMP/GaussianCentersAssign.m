function [ cs ] = GaussianCentersAssign( obj,x )
%GaussianCentersAssign Automatically assign the Gaussian centers
%   x: M x 1, the phase variable
%   cs: N x 1, the centers of Gaussian kernels

M = size(x,1);
L = floor(M/(obj.N));
INDEX = zeros(M,1);
INDEX(1) = 1;
for i = 2:M-L
    if mod(i,L) == 0
        INDEX(i) = 1;
    end
end

cs = x(INDEX==1);

end
