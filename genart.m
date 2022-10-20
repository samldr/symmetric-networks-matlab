clear

% input configuration
iterations = 8;
repeat = [1 1 1 1];
angles = [15 45 60 45 15];
len =    [12 1 4 1 12];

x = 0;
y = 0;
l = 0;
theta = 0;

% algorithm
for j = 1:iterations
    for i = 1:length(repeat)
        for ii = 1:length(angles)
            for iii = 1:repeat(i)
                l = l + 1;
                theta = theta + angles(i);
    
                if theta >= 360
                    theta = theta - 360;
                end
    
                x = len(ii)*sind(theta)+x;
                y = len(ii)*cosd(theta)+y;
                
                x_coord(l) = x;
                y_coord(l) = y;
    
            end
        end
    end
end

% plot
plot(x_coord,y_coord, Color=[0 0 0],LineWidth=1)
set(gca,'visible','off')

%to save, uncomment this and change 'genart.png' to whatever name
%exportgraphics(gcf, 'genart.png', 'Resolution', 600)