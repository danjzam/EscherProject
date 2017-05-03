%function S = findbestsplits(MM3)
close all;
clear;
clc;
MM3 = imread('mm3.jpg');
G = rgb2gray(MM3);%(MM3(:,500:1000,:));
[height, width] = size(G);
meridian_mins = zeros(1,width);
test_vector = uint8(ones(height,1)).*255;
rep = uint8(ones(height,1));
maxtense = rep .* 255;
mintense = rep .* 128;
S = MM3;
figure(1);
%filename = 'scan.gif';
x = (uint8(ones(1200,1)).*150);
y = uint8(1:1200);
colormap('gray');
set(gcf,'position',[300 600 1800 600]);
for column=1000:width-1000
    X = G(:,column)';
    subplot(2,1,1);
    plot(X, 'b', 'LineWidth', 2);
    title(sprintf('Column: %d',column));
    subplot(2,1,2);
    set(gca,'ydir','normal');
    if column < 600
        L = uint8(ones(height,(600-column)));
        L = [L, G(:, 1:(600+column))];
        hold on;
        imagesc([0 300], [0 1200], L);
        hold on;
        plot(x,y,'r','LineWidth',4);
    else
        hold on;
        imagesc(G(:,column:(column+300)));
        plot(x,y,'r');
    end
    drawnow update;
%     frame = getframe(1);
%     im = frame2im(frame);
%     [imind,cm] = rgb2ind(im,256);
%     if column == 1
%         imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
%     else
%         imwrite(imind,cm,filename,'gif','WriteMode','append');
%     end
%     if G(:,column) == test_vector
%         S(:,column,1) = maxtense;
%         S(:,column,2) = mintense;
%         S(:,column,3) = mintense;
%         fprintf('%d\n',column);
%         pause;
%     end
end


%end