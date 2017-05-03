function [  ] = imbinarize_thresh_range( I, lb, ub )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

for threshold= lb:0.01:ub
    B = imbinarize(rgb2gray(I),threshold);
    imshow(B);
    title(sprintf('t == %1.2f',threshold));
    drawnow update
end



%
% Find objects in the transformed image. 
% For the first, we want nobj==14
%
% cc = bwconncomp(M);
% data = regionprops(cc);
% nobj = cc.NumObjects;
%
% Set a countser for the number of dice
%
% counts = {0, 0, 0, 0, 0, 0};
% actualdice = 0;
% unknown = 0;
%figure, imshow(insertShape(I,'Rectangle', data(k).BoundingBox, 'LineWidth', 5)),

% for k = 1:nobj
% 
%     %fprintf('Processing object %d...\n\n', k);
%     %drawnow('update');
%     xc = data(k).Centroid(1);
%     yc = data(k).Centroid(2);
%     %
%     % Generate a mask, this is what we'll crop against
%     % when we compute the normalize cross correlation.
%     %
%     mask = zeros(size(M));
%     mask(cc.PixelIdxList{k}) = 1;
%     %
%     % Also the boundary to give us a red line.
%     % How to prevent red line around dots and   ***
%     % only have it around the dice???
%     %
%     boundary = bwperim(mask);
%     scores = zeros(1,size(templates,1));
%     for n=1:size(templates,1)
%         template = templates{n};
%         height = size(template,1);
%         width = size(template,2);
%         if width > 20
%             %
%             % Compute correlation
%             %
%             xupper = xc - width;
%             yupper = yc - height;
%             bbox = [xupper yupper width*2 height*2];
%             corr = normxcorr2(template, imcrop(mask, bbox));
%             [ypeak, xpeak] = find(corr==max(corr(:)));
%             scores(n) = corr(max(ypeak), max(xpeak));
%         else
%             unknown = unknown + 1;
%         end
%     end
% 
%     best_template = find(scores == max(scores(:)));
%     if scores(best_template) >= mincorr
%         %
%         % If it's not just a speck...
%         %
%         [i,j] = find(boundary);
%         imshow(I);hold on; plot(j,i,'r.');
%         title(sprintf('Dice count: %d',actualdice));
%         drawnow('update');
%         actualdice = actualdice + 1;
%         counts{best_template} = counts{best_template} + 1;
%     end
% end
% %
% % Print all the details for the current image.
% %
% total = 0;
% fprintf('Number of Dice: %d\n', actualdice); 
% fprintf('Number of 1''s: %d\n', counts{1}); total = total + 1 * counts{1};
% fprintf('Number of 2''s: %d\n', counts{2}); total = total + 2 * counts{2};
% fprintf('Number of 3''s: %d\n', counts{3}); total = total + 3 * counts{3};
% fprintf('Number of 4''s: %d\n', counts{4}); total = total + 4 * counts{4};
% fprintf('Number of 5''s: %d\n', counts{5}); total = total + 5 * counts{5};
% fprintf('Number of 6''s: %d\n', counts{6}); total = total + 6 * counts{6};
% fprintf('Number of Unknown: %d\n', unknown);
% fprintf('Total of all dots: %d\n', total);
% 
% 
end

