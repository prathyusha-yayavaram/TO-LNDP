function result = lndp_mode2(data)
    %data = [2 5 3; 8 5 2 ; 9 1 7];
    [x, y] = size(data);
    result = zeros(x,y);
    
    for i=1:x
        for j=1:y
            mask = zeros(3,3);
            %i1
            if j-2>0
                i1 = data(i,j-2);
            else
                i1=0;
            end
            
            %i2
            if i+1<=x && j-2>0
                i2 = data(i+1,j-2);
            else
                i2=0;
            end
            
            %i3
            if i+2<=x && j-2>0
                i3 = data(i+2,j-2);
            else
                i3=0;
            end
            
            %i4
            if i+2<=x && j-1>0
                i4 = data(i+2,j-1);
            else
                i4=0;
            end
            
            %i5
            if i+2<=x
                i5 = data(i+2,j);
            else
                i5=0;
            end
            
            %i6
            if i+2<=x && j+1<=y
                i6 = data(i+2,j+1);
            else
                i6=0;
            end
            
            %i7
            if i+2<=x && j+2<=y
                i7 = data(i+2,j+2);
            else
                i7=0;
            end
            
            %i8
            if i+1<=x && j+2<=y
                i8 = data(i+1,j+2);
            else
                i8=0;
            end
                        
            %w1
            w1=0;
            if i-1>0 && j-2>0
                w1 = data(i-1,j-2);
            end
            w2=0;
            if j+2<=y
                w2 = data(i,j+2);
            end
           
           % str = sprintf('%d %d    %d %d %d %d %d %d %d %d',i,j,i1,i2,i3,i4,i5,i6,i7,i8);
            %disp(str);
            %%%%%%%%%%%%%%
            
            %str = sprintf('%d %d    %d %d %d %d %d %d %d %d',i,j,i1,i2,i3,i4,i5,i6,i7,i8);
            %disp(str);
            if ((w1-i1)>=0 && (i2-i1)>=0) || ((w1-i1)<0 && (i2-i1)<0)
                mask(2,3) = 1;
            else
                mask(2,3)=0;
            end
            if ((i3-i2)>=0 && (i1-i2)>=0) || ((i3-i2)<0 && (i1-i2)<0)
                mask(3,3) = 1;
            else
                mask(3,3)=0;
            end
            if (i4-i3>=0 && i2-i3>=0) || (i4-i3<0 && i2-i3<0)
                mask(3,2) = 1;
            else
                mask(3,2)=0;
            end
            if (i5-i4>=0 && i3-i4>=0) || (i5-i4<0 && i3-i4<0)
                mask(3,1) = 1;
            else
                mask(3,1)=0;
            end
            if (i4-i5>=0 && i6-i5>=0) || (i4-i5<0 && i6-i5<0)
                mask(2,1) = 1;
            else
                mask(2,1)=0;
            end
            if (i5-i6>=0 && i7-i6>=0) || (i5-i6<0 && i7-i6<0)
                mask(1,1) = 1;
            else
                mask(1,1)=0;
            end
            if (i6-i7>=0 && i8-i7>=0) || (i6-i7<0 && i8-i7<0)
                mask(1,2) = 1;
            else
                mask(1,2)=0;
            end
            if (i7-i8>=0 && w2-i8>=0) || (i7-i8<0 && w2-i8<0)
                mask(1,3) = 1;
            else
                mask(1,3)=0;
            end
            %str1 = sprintf('%d %d %d %d %d %d %d %d',mask(2,3),mask(3,3),mask(3,2),mask(3,1),mask(2,1),mask(1,1),mask(1,1),mask(1,2),mask(1,3));
            %disp(str1);
            
            %%%%%%%%%%%%%%%
            result(i,j) = mask(2,3) + mask(3,3)*128 + mask(3,2)*64 + mask(3,1)*32 + mask(2,1)*16 + mask(1,1)*8 + mask(1,2)*4 + mask(1,3)*2;
            %disp(result(i,j));
        end
    end
    
end
    
    
