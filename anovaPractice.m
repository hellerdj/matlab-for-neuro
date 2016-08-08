%{
 ANOVA (analysis of variance) 
    - Generalizes the case of a two-sample t-test
    - anova1 function 
        - assumes that different samples are stored in 
            different columns and that different rows represetn different 
            observations in the same sample
        - assumes that there is an equal number of observations
    - anova2 function
        - Use for more generalized, or unequal samples. Similar syntax
%}

% One-way ANOVA: 
A = rand(100, 5); % Generating 5 levels with 100 repetitions each
anova1(A); % Do a one-way balanced ANOVA

B = meshgrid(1:100); %Generate a large meshgrid
B = B(:, 1:5); % We only need the first five columns

A = A .* B; % multiply by meshgrid
anova1(A); % Now will show a positive trend

