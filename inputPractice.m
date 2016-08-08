figure
hold on;
xlim([0 1])
ylim([0 1])
for i = 1:10
    a = ginput(3);
    plot(a(:,1),a(:,2));
end
