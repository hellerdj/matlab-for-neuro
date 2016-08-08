%Description
%   For this project. your task is to replicate a generalized version of the 
%   Posner paradigm. You will measure the speed of the "attentional
%   spotlight" in the verical versus horizontal directions.

%{
 Create a program that allows you to gather data on reaction time
 - Most of the particular implementation is up to you (nature of cue,
 specific distances, etc). However, be sure to implement the following: 
    - Cue and target must appear in one of 16 possible positions
    - Make sure you have an equal number of valid and invalid trials
        If trial is valid, target appears in position of cue 
        If trial is invalid, target position is picked randomly (minus 1,
        the posiiton of the cue)
    - Choose TWO temporal delays between cue and target: 100ms and 300ms
        Make the delay an experimental condition
    - Collect data from 80 trials per spatial location of the cue
        So that you have 20 for each combination of conditions
        (valid / invalid, delay1 / delay2)
    - Total of 1280 trials
    - Make sure that the picking of condition is random 
        (valid / invalid, delay1 / delay2, spatial location of cue)
%}
