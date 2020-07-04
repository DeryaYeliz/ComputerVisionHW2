function [B1, B2, B3, B4, B5] = k_means(I)

[L1,Centers] = imsegkmeans(I,1);
[L2,Centers] = imsegkmeans(I,2);
[L3,Centers] = imsegkmeans(I,3);
[L4,Centers] = imsegkmeans(I,4);
[L5,Centers] = imsegkmeans(I,5);

B1 = labeloverlay(I,L1);
B2 = labeloverlay(I,L2);
B3 = labeloverlay(I,L3);
B4 = labeloverlay(I,L4);
B5 = labeloverlay(I,L5);

end

