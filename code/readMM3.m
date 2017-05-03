function [MM3, divisions] = readMM3()
    MM3 = imread('mm3.jpg');
    [height, width] = size(MM3);
    divisions = []; div_idx = 1;
    left = int16(1);
    while (left+600)<width
        right = int16(left + 600);
        D = MM3(:,(left:right),:);
        [imind,cm] = rgb2ind(D,256);
        imwrite(imind,cm,sprintf('%d.jpg',div_idx),'jpg');
        left = right;
        div_idx = div_idx + 1;
    end
    
end