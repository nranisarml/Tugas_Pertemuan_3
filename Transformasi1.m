%Menapilkan Gambar Citra Berwarna
a = imread('Nuranisa Ramli.jpg');
[m n d] = size(a)
figure (1);
imshow (a)

%Transformasi ke Citra Keabuan (Rumus Komposisi)
I_geyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
figure (2);
imshow (I_geyKom)

%Transformasi Citra Biner
I_biner = im2bw(I_geyKom, 125/255);
figure (3);
imshow (I_biner)

%Transformasi Citra Brightness
I_Brigh = 55;
I_brigh = I_geyKom + I_Brigh;
figure (4);
imshow (I_brigh)

%Transformasi Citra Contrast
I_Con = 0.5;
I_con = I_geyKom * I_Con;
figure (5)
imshow (I_con)