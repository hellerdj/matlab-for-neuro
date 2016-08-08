
%T-test
%Test the hypothesis that there is a difference in the mean of two
%independent samples

%Create a matrix A with 100 random elements in one column
A = rand(100, 1); 

%Create a matrix B with 100 random elements in one column
B = rand(100, 1); 
[significant, p] = ttest2(A,B)

% Results: 
% p = 0.5367
% Observed difference in means has a probability of about .54,
% which is far too high to reject the null hypothesis

B = B .* 2;
[significant , p] = ttest2(A, B); 

% Results:
% p = 6.457990413706202e-15
% significant = 1
% Now, the null hypothesis is rejected. p-value is miniscule

% Note: 
% If you use rand() function just as is, the SAE sequence of pseudorandom
% numbers will be generated each session.
% Avoid this by seeding the numbers like this: 
% rand('state', number)

% pick a different number as a seed each time
% It is popular to make the number after the state argument dependent on
% the cpu-clock like this, for older versions of Matlab: 
% rand('state', sum(100 * clock))




