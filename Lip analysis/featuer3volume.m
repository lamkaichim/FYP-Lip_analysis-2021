
% area
measurements = regionprops(BW, 'Area');
disp(measurements);

%width 
[width, height, numberOfColorChannels] = size(B);
disp(width);

