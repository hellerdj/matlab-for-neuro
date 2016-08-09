
% Define experimental conditions
validTrialCnt = 0;
invalidTrialCnt = 0;
delay1 = .1; % Change to milliseconds
delay2 = .3; % Change to milliseconds

% User instructions:
% "Fixate on the center of the screen. Do not break fixation for the
% duration of the trial"
% "As soon as you see the target location, press any key"

% Create figure for experiment
fig = figure;
hold on

xlim([0 4]) %Set the range of values on the x-axis to (0 to 1)
ylim([0 4]) %Set the range of values on the y-axis to (0 to 1)
x = 0; 
y = 0;
R = zeros(1,16);        % Array for rectangles

% Draw Grid of Rectangles
cnt = 1; 
while y < 5
    x = 0;
   while x < 5
       R(cnt) = rectangle('Position', [x y 1 1])
       x = x + 1;
       cnt = cnt + 1;
   end
   y = y + 1;
end
pause

% Valid Trial, cue and target are in same area
cuePos = [1 1 1 1];
cue = rectangle('Position', cuePos, 'FaceColor', 'b')
set(cue, 'visible', 'off');
targetPos = [1 1 1 1];
target = rectangle('Position', targetPos, 'FaceColor', 'g'); % show target
set(target, 'visible', 'off');


tic %Start stopwatch
set(cue, 'visible', 'on');
pause ( delay1 ) 
set(cue, 'visible', 'off');
toc %End stop-watch
set(target, 'visible', 'on');


tic %Start stopwatch
pause
reactionTime = toc %End stop-watch
% set(fig, 'visible' ,'off')


