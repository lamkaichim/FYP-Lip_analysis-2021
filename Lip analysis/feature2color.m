%plot color range
rgbImage = double(B);

[r, g, b] = imsplit(rgbImage);
xyz = [r(:) g(:) b(:)];
ptCloud = pointCloud(xyz);
pcshow(ptCloud)


% plot one coordinate color
A = B;

R = A(:,:,1); 
G = A(:,:,2); 
B = A(:,:,3);

[R(22,40) G(22,40) B(22,40)]

% check coordinate
% image(A) ;
% [col,row] = ginput;
