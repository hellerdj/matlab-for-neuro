figure
x = 0:0.1:20;
y = sin(x);
k = 1
while k < 3; %For k = 1 and 2
    QUILT1(1,:) = x; 
    QUILT2(1,:) = y; 
    QUILT1(2,:) = x; 
    QUILT2(2,:) = -y; 
    QUILT1(3,:) = -x; 
    QUILT2(3,:) = y; 
    QUILT1(4,:) = -x;
    QUILT2(4,:) = -y;
    hold on
    for i = 1:4         %A nested loop, with i as counter, from 1 to 4
        plot(QUILT1(i,:), QUILT2(i,:), 'color','g') %Plot the ith row of QUILT1 vs QUILT2
        pause
    end
    for i = 1:4         %Another nested loop, with i as counter, from 1 to 4
        plot(QUILT2(i,:),QUILT1(i,:), 'color', 'b') %Plot the ith row of QUILT2 vs. QUILT1
        pause
    end
    y = y + 19; %Incrementing y by 19 (for every increment of k)
    k = k + 1;  %Incrementing k by 1
end             %End of K-loop
