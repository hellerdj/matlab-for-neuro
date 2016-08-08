figure                              %Open new figure
for i = 1:9                         %Start loop, counter i run from 1 to 9
    subplot(3,3,i)                  %Draw into subplot i, arranged in 3 rows and 3 cols
    h = bar(1,1);                   %Fil the plot with uniform color
    set(h,'FaceColor', [i/9 0 i/9]);  %Draw each in a slightly different color
end                                 %End loop