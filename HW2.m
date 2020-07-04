%Written by Derya Yeliz ULUTAS
%03.07.2020

%step 1.1 k-means
rgbImage = imread('SunnyLake.bmp');
[B1, B2, B3, B4, B5] = k_means(rgbImage);
figure,'RGB K-MEANS', montage({rgbImage,B1,B2,B3,B4,B5},'Size', [2 3]);
title('RGB K-MEANS');


%step 1.2
vector1 = rgb2gray(rgbImage);
[B1, B2, B3, B4, B5] = k_means(vector1);
figure,montage({vector1,B1,B2,B3,B4,B5},'Size', [2 3]);
title('GRAY-SCALE K-MEANS');

%step 1.3
[I_R, I_G, I_B] = imsplit(rgbImage);

[B1, B2, B3, B4, B5] = k_means(I_R);
figure,montage({I_R,B1,B2,B3,B4,B5},'Size', [2 3]);
title('R K-MEANS');

[B1, B2, B3, B4, B5] = k_means(I_G);
figure,montage({I_G,B1,B2,B3,B4,B5},'Size', [2 3]);
title('G K-MEANS');

[B1, B2, B3, B4, B5] = k_means(I_B);
figure,montage({I_B,B1,B2,B3,B4,B5},'Size', [2 3]);
title('B K-MEANS');


%%step 2.1 MeanShift

bandwidth = 0.05;
Ims1 = mean_shift(rgbImage,bandwidth,2);

bandwidth = 0.075;
Ims2 = mean_shift(rgbImage,bandwidth,2);

bandwidth = 0.1;
Ims3 = mean_shift(rgbImage,bandwidth,2);

bandwidth = 0.25;
Ims4 = mean_shift(rgbImage,bandwidth,2);

bandwidth = 0.5;
Ims5 = mean_shift(rgbImage,bandwidth,2);

bandwidth = 0.75;
Ims6 = mean_shift(rgbImage,bandwidth,2);

figure,montage({Ims1,Ims2,Ims3,Ims4},'Size', [2 3]);
title('MEAN_SHIFT COLORED WINDOW SIZES: 0.05 0.075 0.1 0.25, 0.5, 0.75');














%%step 2.2 MeanShift
% grayImg = rgb2gray(rgbImage);
% grayImg = im2double(grayImg);
% 
% grayImg = im2double(grayImg);
% X = reshape(grayImg,size(grayImg,1)*size(grayImg,2),3);                                         % Color Features
% [clustCent,point2cluster,clustMembsCell] = MeanShiftCluster(grayImg,bandwidth);    % MeanShiftCluster
% for i = 1:length(clustMembsCell)                                              % Replace Image Colors With Cluster Centers
% X(clustMembsCell{i},:) = repmat(clustCent(:,i)',size(clustMembsCell{i},2),1); 
% end
% Ims = reshape(X,size(I,1),size(I,2),3); 
%         


% bandwidth = 0.05;
% Ims1 = mean_shift(grayImg,bandwidth,1);
% 
% bandwidth = 0.075;
% Ims2 = mean_shift(grayImg,bandwidth);
% imshow(Ims1);
% 
% bandwidth = 0.1;
% Ims3 = mean_shift(grayImg,bandwidth);
% 
% bandwidth = 0.25;
% Ims4 = mean_shift(grayImg,bandwidth);
% 
% bandwidth = 0.5;
% Ims5 = mean_shift(grayImg,bandwidth,1);
% 
% bandwidth = 0.75;
% Ims6 = mean_shift(grayImg,bandwidth);
% 
% figure,montage({Ims1,Ims2,Ims3,Ims4},'Size', [2 3]);
% title('MEAN_SHIFT GRAYSCALE WINDOW SIZES: 0.05 0.075 0.1 0.25, 0.5, 0.75');
% 
