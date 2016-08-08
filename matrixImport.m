%Data Import
M1 = xlsread('Chapter2/Matrix1.xls');
M2 = xlsread('Chapter2/Matrix2.xls');
M3 = xlsread('Chapter2/Matrix3.xls');
%Data Pruning
Movies = [];
temp = [M1 M2 M3];
k = 1;
%More flexible than just saying 1603 (number of subjects)
for i = 1:length(temp)  
    %If both are numbers (=valid)
    if isnan(temp(i,1)) == 0 & isnan(temp(i,2)) == 0 & isnan(temp(i,3)) == 0  
        Movies(k,:) = temp(i,:);
        k = k + 1;
    end
end

% ================================= Create a new figure
figure 
% ================================= M1 vs M2 Ratings
subplot(1,3,1)
plot(Movies(:,1),Movies(:,2),'.','markersize',24) 
% ================================= M1 vs M3 Ratings
subplot(1,3,2)
plot(Movies(:,1),Movies(:,3),'.','markersize',24)
% ================================= M2 vs M3 Ratings
subplot(1,3,3)
plot(Movies(:,2),Movies(:,3),'.','markersize',24)

% ================================= average of the Movie matrix
averages = mean(Movies) 


figure                      %Open new figure
subplot(1,3,1)              %Open new subplot
hold on;                    %Hold the plot
hist(Movies(:,1),9)         %Matrix I data. 9 bins is enough since we only have 9 ratings
histfit(Movies(:,1),9)      %Fit a gaussian (bell-shaped curve)
xlim([0 4]);                %Make sure the plotting range is fine
title('Matrix I')           %Add a title for left subplot

subplot(1,3,2)              %Open new subplot
hold on;                    %Hold the plot
hist(Movies(:,2),9)         %Matrix II data. 9 bins because 9 ratings
histfit(Movies(:,2),9)      %Fit a gaussian (bell-shaped curve)
xlim([0 4]);                %Make sure the plotting range is fine
title('Matrix II: reloaded')%Add a title for right subplot

subplot(1,3,3)              %Open new subplot
hold on;                    %Hold the plot
hist(Movies(:,3),9)         %Matrix II data. 9 bins because 9 ratings
histfit(Movies(:,3),9)      %Fit a gaussian (bell-shaped curve)
xlim([0 4]);                %Make sure the plotting range is fine
title('Matrix III')%Add a title for right subplot


MT1 = (Movies(:,1)*2)+ 1;   %Temp matrix, multiplying ratings by 2 to get 
MT2 = (Movies(:,2)*2)+ 1;   %integral steps and adding 1 matrix indeces start with 1, not zero
MT3 = (Movies(:,3)*2)+ 1;
c = zeros(9,9); %Creates a matrix "c" filled with zeros with the indicated dimensions
d = zeros(9,9); %Creates a matrix "d" filled with zeros with the indicated dimensionsd = zeros(9,9);
e = zeros(9,9); %Creates a matrix "e" filled with zeros with the indicated dimensions
i = 1; 
for i = 1:length(Movies) %This loop will fill c matrix with movie rating counts
    c(10-MT1(i,1), MT2(i,1)) = c(10-MT1(i,1),MT2(i,1)) + 1; %Adding one in the cell count
    d(10-MT1(i,1), MT3(i,1)) = d(10-MT1(i,1),MT3(i,1)) + 1; 
    e(10-MT2(i,1), MT3(i,1)) = e(10-MT2(i,1),MT3(i,1)) + 1; 
    
end 
figure 
surf(c) %Create a surface
shading interp %Interpolate the shading
xlabel('Ratings for matrix I') %Label the x-axis
ylabel('Ratings for matrix II: reloaded') %Label for the y-axis
zlabel('Frequency') %Get in the habit of labeling your axes. 
title('M1 vs M2')


figure 
surf(d) %Create a surface
shading interp %Interpolate the shading
xlabel('Ratings for matrix I') %Label the x-axis
ylabel('Ratings for matrix III') %Label for the y-axis
zlabel('Frequency') %Get in the habit of labeling your axes. 
title('M1 vs M3')


figure 
surf(e) %Create a surface
shading interp %Interpolate the shading
xlabel('Ratings for matrix II: reloaded') %Label the x-axis
ylabel('Ratings for matrix III') %Label for the y-axis
zlabel('Frequency') %Get in the habit of labeling your axes. 
title('M2 vs M3')









