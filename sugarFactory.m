P = [];                 %Assigning an empty matrix. Making P empty.
a0 = 6000;              %a0 is 6000;
m0 = 0;                 %m0 is 0;
w0 = 300;               %w0 is 300;
P(1,:) = [m0, w0, a0];  %First production values
figure                  %Open a new figure
plot(0,a0,'.','markersize',24); %Plot the first values
hold on;                %Make sure that the plot is held
xlim([0 25])            %Indicate the right x-limits
i = 1;                  %Initialize our counter
while i < 25            %the subject is in charge for 24 months = 2 yrs
    P                   %Show the subject the production values so far
    a = input('How many workers this month?')   %Get the user input
    b = 20 * a - a0     %This is the engine. Determines how much sugar is produced
    a0 = b;             %Assign a new a0
    plot(i, a0,'.','markersize',24);   %Plot it in the big figure
    P(i+1,:) = [i,a,b]; %Assign a new row in the P(roduction) matrix
    plot(P(:,1),P(:,3),'color','k'); %Connect the dots
    i = i + 1;          %Increment counter
end                     %End loop
