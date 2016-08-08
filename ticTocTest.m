format long; %Long helps see short differences in time
i = 1; %Initialize the index, i
t = zeros(100000,1); %Initializing the matrix that will store times
while i < 100000
    tic %Start stop-watch
    i = i + 1; %Increment index
    t(i, 1) = toc; %End stop-watch and put respective time in matrix
end