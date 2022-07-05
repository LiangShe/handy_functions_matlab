function imd = im_down_size(im, n)
% downsize image by average n neighbouring pixels

if nargin<2
    n=2;
end

dim = size(im);
dim(1) = floor(dim(1)/n)*n;
dim(2) = floor(dim(2)/n)*n;

imd = im(1:dim(1),1:dim(2),:);
imd = reshape(imd, [n, dim(1)/n, n, dim(2)/n, dim(3:end)]);
imd = squeeze(mean(mean(imd,1),3));

