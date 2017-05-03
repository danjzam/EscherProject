function [a] = imagesc_stdmaps(I)
    maps = stdmaps();
    figure    
    for i=1:length(maps)
        ax1 = subplot(6,3,i);
        imagesc(I);
        colormap(ax1,maps{i});
        title(maps{i});
        drawnow update
    end
end