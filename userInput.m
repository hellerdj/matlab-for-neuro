h = figure
set(h, 'Pointer','crosshair')
g = text(0.5,0.5, 'This is pretty cool')
pause %waiting for a single keypress
h725 = get(h, 'CurrentCharacter')
set(g,'color','r','fontsize',20)