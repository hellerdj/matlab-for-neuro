
% Define experimental conditions
validTrialCnt = 0; 
invalidTrialCnt = 0;
delay1 = 100; % Change to milliseconds
delay2 = 300; % Change to milliseconds

% User input
% "Fixate on the center of the screen. Do not break fixation for the 
% duration of the trial"
% "As soon as you see the target location, press a key"

% Create figure for experiment
fig = figure; 

% Draw Rectangle
xlim([0 1]) %Set the range of values on the x-axis to (0 to 1)
ylim([0 1]) %Set the range of values on the y-axis to (0 to 1)

%Create a rectangle at:
% x-position 0.2
% y-position 0.4 with an 
% x-width of 0.5 and
% y-height of 0.2
target1 = rectangle('Position', [0.2 0.4 0.2 0.2]) 

%Create a rectangle at:
% x-position 0.2
% y-position 0.6 with an 
% x-width of 0.5 and
% y-height of 0.2
target2 = rectangle('Position', [0.6 0.4 0.2 0.2]) 

% Plus in middle of screen
fixate = text(.5, .5, '+');
set(fixate, 'color', 'b','fontsize', 30);
set(fixate, 'LineWidth', 0.1);
%plot(.5,.5,'b.','MarkerSize',5)


