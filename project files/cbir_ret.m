clc
tic
f = load('C:\Users\Shaik Nazeer\Documents\MATLAB\imgfile.txt');
query = 20;
img = imread(strcat('C:\Users\Shaik Nazeer\Documents\MATLAB\DataBase\forest\',int2str(query),'.jpg'));
img1 = imread(strcat('C:\Users\Shaik Nazeer\Documents\MATLAB\DataBase\colour\',int2str(query),'.jpg'));
subplot(5,5,3);
imshow(img1);
number_of_images = 440;
q_lndp = fiveX5_LNDP(img);
distance = zeros(1,number_of_images);
image_array=zeros(number_of_images);
for i=1:number_of_images             %% number of images in the database
  
   distance(i) = manhattan(transpose(q_lndp),(f(i,:)));
   image_array(i)=i;
end
srcFiles = dir('C:\Users\Shaik Nazeer\Documents\MATLAB\DataBase\forest\*.jpg');

%%[imgs,e_sd] = imgsort(srcFiles,distance);

for i = 1:number_of_images
   for j =i+1: number_of_images
      if(distance(i)>distance(j))
          temp = distance(i);
          distance(i)=distance(j);
          distance(j) = temp;
          
          temp = image_array(i);
          image_array(i) = image_array(j);
          image_array(j) = temp;
      end
   end
    
end

j = 6;
for i = 1 : 20
filename = strcat('C:\Users\Shaik Nazeer\Documents\MATLAB\DataBase\colour\',int2str(image_array(i)),'.jpg');

I = imread(filename);
subplot(5,5,j), imshow(I,'Border','tight');
j = j+1;
end

%disp(distance);
toc