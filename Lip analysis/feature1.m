clear all;
reqToolboxes = {'Computer Vision Toolbox', 'Image Processing Toolbox'};
if( ~checkToolboxes(reqToolboxes) )
 error('detectFaceParts requires: Computer Vision System Toolbox and Image Processing Toolbox. Please install these toolboxes.');
end

img = imread('black.jpg');

detector = buildDetector();
[bbox bbimg, faces, bbfaces] = detectFaceParts(detector,img,2);

figure;
imshow(uint8(bbimg));
for i=1:size(bbfaces,1)
 figure;
 imshow(uint8(bbfaces{i}));
end

%crop mouth part
B = imcrop(img, bbox(:,13:16));
figure;
imshow(B);





