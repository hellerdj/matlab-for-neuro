size = 4;

popCorrect = zeros(4,2);
popIncorrect = zeros(4,2);
conjCorrect = zeros(4,2);
conjIncorrect = zeros(4,2);
trial = 0;
yCount = 0;
nCount = 0;
h = figure; %Start by creating a figure

g = text(0.25, .75, 'Press any key to continue');
set(g,'color','b','fontsize',20);
g = text(0.25,0.5, 'Determine if the red "o" is present');
set(g,'color','b','fontsize',20);
g = text(0.25,0.25, 'If you see it, press  "y" ');
set(g,'color','r','fontsize',20);
g = text(0.25,0.1, 'If you dont, press  "n" ');
set(g,'color','r','fontsize',20);
pause %waiting for a single keypress
set(h,'visible','off');
while size < 17
    trial = trial + 1;
    h = figure;
    
    plot(1,1)
    xlim([0 1.5])
    ylim([0 1.5])
    hold on
    
    i = 0;
    a = rand(1,1);
    %Randomize target trials
    if a > 0.5
        target = randi([0 3],1);
        present = 'y';
        yCount = yCount +1;
    else
        target = -1;
        present = 'n';
        nCount = nCount +1;
    end
    %Ensure there are equal target and absent sessions
    if (yCount > 2)
        target = -1;
        present ='n';
        yCount = yCount -1;
        nCount = nCount +1;
    end
    if (nCount > 2)
        target = randi([0 3],1);
        present = 'y';
        yCount = yCount +1;
        nCount = nCount -1;
    end
    while i < size
        
        if i == target %Check if target is present
            color = 'r'; %color will be red
            shape = 'o'; %shape will be 'o'
        else %not present
            color = 'g'; %color will be green
            shape = 'x'; %shape will be 'x'
        end
        
        x = rand(1);
        y = rand(1);
        pop = text(x, y, shape);
        set(pop, 'color', color,'fontsize', 20);
        i = i +1;
    end
    
    tic %Start stopwatch
    pause %waiting for a single keypress
    h725 = get(h, 'CurrentCharacter');
    %h725 will equal 'p' when target is present
    %h725 will equal 'a' when target is absent
    t(trial, 1) = toc; %End stop-watch
    if (present == h725)
        %User was correct, add the size and time to respond to matrix
        popCorrect(trial, 1) = size;
        popCorrect(trial, 2) = t(trial, 1);
        
    else
        %user was correct, add the time and size to respective matrix
        popIncorrect(trial, 1) = size;
        popIncorrect(trial, 2) = t(trial, 1);
    end
    set(h, 'visible' ,'off')
    size = size + 4;
    
end

yCount = 0;
nCount = 0;
trial = 0;
size = 4;
%Conjunction search
while size < 17;
    trial = trial +1;
    h = figure;  %Start by creating a figure
    
    plot(1,1)
    xlim([0 1.5])
    ylim([0 1.5])
    hold on
    
    i = 0;
    a = rand(1,1);
    
    %Randomize target trials
    if a > 0.5
        target = randi([0 3],1);
        present = 'y';
        yCount = yCount +1;
    else
        target = -1;
        present = 'n';
        nCount = nCount +1;
    end
    %Ensure there are equal target and absent sessions
    if (yCount > 2)
        target = -1;
        present ='n';
        yCount = yCount -1;
        nCount = nCount +1;
    end
    if (nCount > 2)
        target = randi([0 3],1);
        present = 'y';
        yCount = yCount +1;
        nCount = nCount -1;
    end
    
    while i < size
        
        if i == target
            color = 'r';
            shape = 'o';
        else
            if mod(i, 2) == 0 %Check if i is even
                color = 'r'; %color will be red
                %         rCount = rCount +1;
            else %color will be green
                color = 'g';
                %         gCount = gCount +1;
            end
            st = rand(1,1);  %Creates a random number and assigns it to the variable st
            if st > 0.5 %Check if co is larger than "0.5"
                shape = 'x'; %50 percent chance stim will be an x
                %         xCount = xCount +1;
            else
                shape = 'o'; %50 percent chance stim will be an o
                %         xCount = xCount +1;
            end
            if color == 'r' & shape == 'o'
                shape = 'x';
            end
        end
        %     if color == 'r' & shape == 'o'
        x = rand(1);
        y = rand(1);
        conj = text(x, y, shape);
        set(conj, 'color', color,'fontsize', 20);
        i = i +1;
        
    end
    tic %Start stopwatch
    pause %waiting for a single keypress
    h725 = get(h, 'CurrentCharacter');
    %h725 will equal 'p' when target is present
    %h725 will equal 'a' when target is absent
    t(trial, 1) = toc; %End stop-watch
    if (present == h725)
        %User was correct, add the size and time to respond to matrix
        conjCorrect(trial, 1) = size;
        conjCorrect(trial, 2) = t(trial, 1);
        
    else
        %user was correct, add the time and size to respective matrix
        conjIncorrect(trial, 1) = size;
        conjIncorrect(trial, 2) = t(trial, 1);
    end
    set(h, 'visible' ,'off')
    size = size + 4;
    
end
correlatePop = corrcoef(popCorrect(:,1),popCorrect(:,2))
correlateConj = corrcoef(conjCorrect(:,1), conjCorrect(:,2))
figure
hold on;
p = plot(popCorrect(:,1),popCorrect(:,2));
c = plot(conjCorrect(:,1), conjCorrect(:,2));
title('Reaction time vs. Set size')
xlabel('Set size') %Label the x-axis
ylabel('RT') %Label for the y-axis



