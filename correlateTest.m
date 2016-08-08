a = rand(100,2); %Creates 2 columns of 100 random values each, puts it in variable a
b = corrcoef(a(:,1), a(:,2)); %Calcluates the Pearson correlation between the two columns

%Corrcoef as a function can also take several parameters:
%[magnitude, p] = corrcoef(a(:,1),a(:,2)); %Same as before, but asking for significace

% Sample output 
%  
% magnitude =
% 
%    1.000000000000000  -0.007977881080156
%   -0.007977881080156   1.000000000000000
% 
% 
% p =
% 
%    1.000000000000000   0.937209969688431
%    0.937209969688431   1.000000000000000
%     
% According to MATLAB, there is a probability of .937 that 
% the observed values were obtained by chance alone 
% (which is, of course, the case). Hence, you can conclude that the 
% correlation is not significant
   
   