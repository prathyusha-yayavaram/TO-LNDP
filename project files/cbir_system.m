tic
srcFiles = dir('C:\Users\Shaik Nazeer\Documents\MATLAB\DataBase\forest\*.jpg');

si = length(srcFiles);
i=1;
c = zeros(si,96);
disp(si)
%%disp(c);
for i=1:si
    img = imread(strcat('C:\Users\Shaik Nazeer\Documents\MATLAB\DataBase\forest\',int2str(i),'.jpg'));
    x1 = (96*(i-1)+1);
    y1 = (96*(i));
    disp(i);    
    z = fiveX5_LNDP(img);
    c(i,:) = z;
    clc
    disp('percentage %: ');
    disp((i/si)*100);
    if(i==2)
        mo = z;
        l1=x1;l2=y1;
    end
end

save('C:\Users\Shaik Nazeer\Documents\MATLAB\imgfile.txt','c','-ascii');
toc
