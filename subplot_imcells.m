function [  ] = subplot_imcells( imcells, imnames, rows, cols )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
r = rows; % rows
c = cols; % columns
iterdiff = (r*c) - length(imcells);
iterations = (r*c) - iterdiff;
for im_idx=1:iterations
    subplot(r,c,im_idx);
    imshow(imcells{im_idx});
    title(sprintf('%d\n%s',im_idx, imnames{im_idx}));
end

end

