function [ images, filenames ] = dir2cells( dir_path )
%dir2cells( template_directory )
%   template_directory is the directory containing the templates

%
% The first directory index that refers to an image is 3
%
filenames = cell(1,length(dir_path));
images = cell(1,length(dir_path));
for im_idx = 4:length(dir_path)
    %
    % Get the filename, read the image
    %
    filename = dir_path(im_idx).name;
    filenames{im_idx-3} = filename;
    images{im_idx-3} = imread(filename);
%     I = imread(filename);       % I == The original image
%     M = xform(I, SE, tlevel);   % M == The modified image
end

end

