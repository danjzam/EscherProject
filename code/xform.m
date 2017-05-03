function [I] = xform(image, strel, lb, ub)
  %
  % Binarize
  %
for threshold= lb:0.01:ub
    I = imbinarize(rgb2gray(image),threshold );
    I = imerode( I, strel );
%     I = imerode( I, strel');
%     I = imdilate(I, strel');
%     I = imdilate(I, strel);
%     I = imerode( I, strel );
%     I = imerode( I, strel');
%     I = imerode( I, strel );
%     I = imerode( I, strel');
    imshow(I);
    title(sprintf('t == %1.2f',threshold));
    drawnow update
end
end

 
  
  %B = imerode( B, strel );
  %B = imdilate( B, strel);
  %I = imerode(B, strel');
  %I = imdilate(I, strel');
  %I = imerode( I, strel );
  %I = imdilate( I, strel);
  %I = imerode( I, strel' );
  %I = imdilate( I, strel');

  %B = imerode( B, strel );
  %B = imerode( B, strel');
  %I = imdilate(B, strel');
  %I = imdilate(I, strel);
  %I = imerode( I, strel );
  %I = imerode( I, strel');
  %I = imerode( I, strel );
  %I = imerode( I, strel');

