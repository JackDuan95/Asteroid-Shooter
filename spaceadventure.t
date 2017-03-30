%Space Adventure-By: Jack Duan
import GUI
setscreen("position:middle;center,graphics:640;400")

%Pictures
var menupic:int:=Pic.FileNew("menu.jpg") 
var level1pic:int:=Pic.FileNew("level1.jpg") 
var level2pic:int:=Pic.FileNew("level2.jpg") 
var level3pic:int:=Pic.FileNew("level3.jpg") 
var level4pic:int:=Pic.FileNew("level4.jpg") 
var level5pic:int:=Pic.FileNew("level5.jpg") 
var surface1_pic:int:=Pic.FileNew("planetary surface1.jpg")
var surface2_pic:int:=Pic.FileNew("planetary surface2.jpg")
var surface3_pic:int:=Pic.FileNew("planetary surface3.jpg")
var surface4_pic:int:=Pic.FileNew("planetary surface4.jpg")
var surface5_pic:int:=Pic.FileNew("planetary surface5.jpg")
var winpic:int:=Pic.FileNew("win.jpg")
var failpic:int:=Pic.FileNew("fail.jpg")
var quitpic:int:=Pic.FileNew("quit.jpg")

%Moving ship with flame#1
var x_shipbody : array 1 .. 4 of int := init (100,115,160,100)%Ship body
var y_shipbody : array 1 .. 4 of int := init (150,136,122,115)%Ship body
Draw.FillPolygon(x_shipbody, y_shipbody, 4, brightblue)%Ship body
Draw.Polygon(x_shipbody, y_shipbody, 4, black)%Ship body
Draw.FillBox(92,120,99,126,red)%Fume pipe
Draw.Box(92,120,99,126,black)%Fume pipe
var x_outerflame : array 1 .. 6 of int := init (90,78,81,76,81,78)%Yellow flame
var y_outerflame : array 1 .. 6 of int := init (123,132,126,123,120,114)%Yellow flame
Draw.FillPolygon(x_outerflame, y_outerflame, 6, yellow)%Yellow flame
var x_innerflame : array 1 .. 6 of int := init (90,84,85,81,85,84)%Red flame
var y_innerflame : array 1 .. 6 of int := init (123,130,126,123,120,116)%Red flame
Draw.FillPolygon(x_innerflame, y_innerflame, 6, brightred)%Red flame
var x_shiphood : array 1 .. 3 of int := init (122,122,150)%Ship hood
var y_shiphood : array 1 .. 3 of int := init (134,126,126)%Ship hood
Draw.FillPolygon(x_shiphood, y_shiphood, 3, grey)%Ship hood
Draw.Polygon(x_shiphood, y_shiphood, 3, black)%Ship hood
var shipmoving1:=Pic.New(76,114,160,150)%Copies ship
cls

%Moving ship with flame#2
Draw.FillPolygon(x_shipbody, y_shipbody, 4, brightblue)%Ship body
Draw.Polygon(x_shipbody, y_shipbody, 4, black)%Ship body
Draw.FillBox(92,120,99,126,red)%Fume pipe
Draw.Box(92,120,99,126,black)%Fume pipe
Draw.FillPolygon(x_outerflame, y_outerflame, 6, brightred)%Red flame
Draw.FillPolygon(x_innerflame, y_innerflame, 6, yellow)%Yellow flame
Draw.FillPolygon(x_shiphood, y_shiphood, 3, grey)%Ship hood
Draw.Polygon(x_shiphood, y_shiphood, 3, black)%Ship hood
var shipmoving2:=Pic.New(76,114,160,150)%Copies ship
cls

%Still Ship
Draw.FillPolygon(x_shipbody, y_shipbody, 4, brightblue)%Ship body
Draw.Polygon(x_shipbody, y_shipbody, 4, black)%Ship body
Draw.FillBox(92,120,99,126,red)%Fume pipe
Draw.Box(92,120,99,126,black)%Fume pipe
Draw.FillPolygon(x_shiphood, y_shiphood, 3, grey)%Ship hood
Draw.Polygon(x_shiphood, y_shiphood, 3, black)%Ship hood
var shipstill:=Pic.New(76,114,160,150)%Copies ship
cls

%Asteroid1
var x_asteroid1 : array 1 .. 6 of int:=init(100,110,124,139,135,117)
var y_asteroid1 : array 1 .. 6 of int:=init(100,115,119,109,97,93)
Draw.FillPolygon(x_asteroid1, y_asteroid1, 6, grey)
Draw.Polygon(x_asteroid1, y_asteroid1, 6, black)
Draw.Oval(114,105,2,3,black)
Draw.Oval(119,98,4,3,black)
Draw.Oval(133,105,3,4,black)
var asteroid1:=Pic.New(100,93,139,119)%Copies Asteroid1
cls

%Asteroid2
var x_asteroid2 : array 1 .. 6 of int:=init(100,125,140,149,135,102)
var y_asteroid2 : array 1 .. 6 of int:=init(100,116,119,109,97,93)
Draw.FillPolygon(x_asteroid2, y_asteroid2, 6, grey)
Draw.Polygon(x_asteroid2, y_asteroid2, 6, black)
Draw.Oval(124,105,2,3,black)
Draw.Oval(113,98,5,2,black)
Draw.Oval(133,105,3,4,black)
var asteroid2:=Pic.New(100,93,149,119)%Copies Asteroid2
cls

%Asteroid3
var x_asteroid3 : array 1 .. 6 of int:=init(118,114,124,134,139,129)
var y_asteroid3 : array 1 .. 6 of int:=init(106,125,139,129,113,96)
Draw.FillPolygon(x_asteroid3, y_asteroid3, 6, grey)
Draw.Polygon(x_asteroid3, y_asteroid3, 6, black)
Draw.Oval(130,108,2,3,black)
Draw.Oval(124,129,5,3,black)
Draw.Oval(123,113,3,5,black)
var asteroid3:=Pic.New(114,96,139,139)%Copies Asteroid3
cls

%Bullet
Draw.FillOval(50,50,5,5,brightred)
var bullet:=Pic.New(45,45,55,55)%Copies bullet
cls

%Monster bullet
Draw.FillOval(50,50,5,5,green)
var monster_bullet:=Pic.New(45,45,55,55)%Copies bullet
cls

%portal
Draw.FillOval(30,30,18,18,brightmagenta)
var portal:=Pic.New(12,12,48,48)%Copies portal
cls

%Monster1 mouth open
Draw.FillArc(50,50,15,15,210,150,brightred)
Draw.Arc(50,50,15,15,210,150,black)
Draw.FillOval(50,57,2,2,black)
var monster1_open:=Pic.New(35,35,65,65)%Copies monster1 w/mouth open
cls

%Monster1 mouth closed
Draw.FillOval(50,50,15,15,brightred)
Draw.Oval(50,50,15,15,black)
Draw.Line(35,50,50,50,black)
Draw.FillOval(50,57,2,2,black)
var monster1_closed:=Pic.New(35,35,65,65)%Copies monster1 w/mouth closed
cls

%Monster2 mouth open
Draw.FillArc(50,50,15,15,210,150,yellow)
Draw.Arc(50,50,15,15,210,150,black)
Draw.FillOval(50,57,2,2,black)
var monster2_open:=Pic.New(35,35,65,65)%Copies monster2 w/mouth open
cls

%Monster2 mouth closed
Draw.FillOval(50,50,15,15,yellow)
Draw.Oval(50,50,15,15,black)
Draw.Line(35,50,50,50,black)
Draw.FillOval(50,57,2,2,black)
var monster2_closed:=Pic.New(35,35,65,65)%Copies monster2 w/mouth closed
cls

%Monster3 mouth open
Draw.FillArc(50,50,15,15,210,150,cyan)
Draw.Arc(50,50,15,15,210,150,black)
Draw.FillOval(50,57,2,2,black)
var monster3_open:=Pic.New(35,35,65,65)%Copies monster3 w/mouth open
cls

%Monster3 mouth closed
Draw.FillOval(50,50,15,15,cyan)
Draw.Oval(50,50,15,15,black)
Draw.Line(35,50,50,50,black)
Draw.FillOval(50,57,2,2,black)
var monster3_closed:=Pic.New(35,35,65,65)%Copies monster3 w/mouth closed
cls

%Sounds
process menutheme
Music.PlayFileLoop ("menumusic.mp3")
end menutheme
fork menutheme%Starts playing the menu theme song

process gametheme
Music.PlayFileLoop ("gamemusic.mp3")
end gametheme

process winsound
Music.PlayFile("winsound.mp3")
end winsound

process failsound
Music.PlayFile ("failsound.mp3")
end failsound

var buttongame:int
var buttoninstructions:int
var buttonhighscores:int
var buttonquit:int
var active_menu:int:=1%which menu is being used
var score: int:=0%Counts the player's total scorefor 1 playthrough, initializes at zero

%menu definitions
const MENU:=1
const GAME:=2
const INSTRUCTIONS:=3
const SCORES:=4
const WIN_SCREEN:=5
const LOSE_SCREEN:=6
const SUBMIT:=7
const CLOSE:=8

%Game
proc game
GUI.Quit
cls
Music.PlayFileStop%Stops menu theme song
fork gametheme%Plays game theme song
score:=0
var font_interface:= Font.New ("Arial:16")%Font used for interface
var i:int:=0%Acts as a integer that increases as the number of executios of the main for loop increases but refreshes with every new level
var shipcontrol: array char of boolean%for input key down
var x_ship:int%x position of ship
var y_ship:int%y position of ship
var flamecount:real:=0%for counting time for movement keys held for the purpose of showing flickering flames from the rear of the ship when it is moving
var health:real:=100%Health of the player's ship
var charge:int%Charge counter used to prevent spamming of bullets
var last_shot:int%Used to subtract from i so that reload pace is the same for every shot
var x_surface:int%x position of all 5 planet surfaces
var y_surface:int%y position of all 5 planet surfaces
var x_portal:int:=600%x position of end-of-level portal
var y_portal:int:=180%y position of end-of-level portal
var asteroid_count:int:=0%Counts the number of asteroids in each level
var monster_count:int:=0%Counts the number of monsters in each level
var bullet_count:int%Counts the number of bullets used up 
var level:int:=1%Set to begin game at level 1
%Used to reset variable values for new levels
var new_level:array 1..5 of boolean
new_level(1):=true
    for zf:2..5
    new_level(zf):=false
    end for


var x_asteroid:array 1..50 of int%Array for x-positions of all 50 asteroids in each level

var y_asteroid:array 1..50 of int%Array for y-positions of all 50 asteroids in each level 
   
var type_asteroid:array 1..50 of int%Array for the type of all 50 asteroids in each level  
    
var type_monster:array 1..20 of int%Array for the type of all 20 monsters in each level  
    
var x_monster:array 1..20 of int%Array for the x_positions of all 20 monsters in each level  
    
var y_monster:array 1..20 of int%Array for the y_positions of all 20 monsters in each level  
    
var x_bullet_fired:array 1..20 of int%Array for the x_positions of each 20 bullets when they are fired 

var y_bullet_fired:array 1..20 of int%Array for the y_positions of each 20 bullets when they are fired 

var asteroid_impact:array 1..50 of boolean%Determines if asteroids have been destroyed or not
    
var monster_impact:array 1..20 of boolean%Determines if monsters have been destroyed or not
    
var bullet_impact:array 1..20 of boolean%Determines if bullets have hit or not

var monster_ammo: array 1..20 of boolean%Determines if the monster can shoot
    
var monster_ammo_impact: array 1..20 of boolean%Determines if the monster's bullet has hit the player's ship
    
var monster_ammo_x: array 1..20 of int%Determines the horizontal distance between the player and the monster when each monster shoots their bullet

var monster_ammo_y: array 1..20 of int%Determines the vertical distance between the player and the monster when each monster shoots their bullet

var x_monster_bullet: array 1..20 of int%Makes the x positions of the monsters' bullets move toward the player depending on where the player was when the monsters shot
    
var y_monster_bullet: array 1..20 of int%Makes the y positions of the monsters' bullets move toward the player depending on where the player was when the monsters shot
    
var time_monster_released: array 1..20 of int%Determines the time at which the monster's bullet is released

var pause_game:string(1)
var continue: string(1)
var count_pause:int:=0

%main loop for game(all levels)
loop
View.Set ("offscreenonly")

%Increases variable i for each execution
i:=i+1

%Gameover if health goes under 1 point
if health<=0 then
active_menu:=LOSE_SCREEN
exit
end if

%Allows to advance to next level
if asteroid_count>=50 and monster_count>=20 and x_portal<(x_ship+55)and x_portal>x_ship and (y_portal<(y_ship+15) and y_portal>y_ship or (y_portal+13)>y_ship and y_portal<y_ship) then
level:=level+1
    if level=6 then
    active_menu:=WIN_SCREEN
    exit
    end if
new_level(level):=true
end if

%Sets variables for level 1 and resets variables every time the player advances to next level
if new_level(level)=true then
i:=1
x_ship:=35
y_ship:=170
health:=health+(100-health)
charge:=100
last_shot:=0
bullet_count:=0
x_surface:=0
y_surface:=60
asteroid_count:=0
monster_count:=0
x_asteroid(1):=maxx
x_monster(1):=maxx
for lm:2..50
x_asteroid(lm):=x_asteroid(lm-1)+100-((level-1)*10)    
end for
for th:2..20
x_monster(th):=x_monster(th-1)+250-((level-1)*25)
end for
for ctrs:1..50
randint(y_asteroid(ctrs),60, maxy-43)
randint(type_asteroid(ctrs),1, 3)
asteroid_impact(ctrs):=false
end for
for cd:1..20
randint(y_monster(cd),60, maxy-30)
randint(type_monster(cd),1, 3)
monster_impact(cd):=false
bullet_impact(cd):=false
monster_ammo(cd):=false
monster_ammo_impact(cd):=false
x_monster_bullet(cd):=0
y_monster_bullet(cd):=0
end for
new_level(level):=false
end if

%Draws Health portion of HUD
Font.Draw("Health", 5, 5, font_interface, green)
colour(black)
locate(23,14)
put round(health), "/100"
Draw.FillBox(75,5,75+round(health),30,green)
Draw.Box(75,5,176,30,black)

%Draws Charge/reload portion of HUD
Font.Draw("Charge", 185, 5, font_interface, brightblue)
colour(black)
locate(23,36)
if charge<=100 then
put charge, "/100"
Draw.FillBox(260,5,260+charge,30,brightblue)
else
put "100/100"
Draw.FillBox(260,5,360,30,brightblue)
end if
Draw.Box(260,5,361,30,black)

%Draws Ammo portion of HUD
Font.Draw("Ammo", 380, 5, font_interface, brightred)
colour(black)
locate(23,58)
put 20-bullet_count, "/20"
Draw.FillBox(445,5,505-(bullet_count*3),30,brightred)
Draw.Box(445,5,506,30,black)

%Draws Score portion of HUD
Font.Draw("Score: ", 520, 5, font_interface, black)
Font.Draw(intstr(score), 585, 5, font_interface, black)

%Draws background for sky and planet based on level
if level=1 then
Pic.Draw(level1pic,-600,60,picCopy)
Pic.Draw(surface1_pic,x_surface-i,y_surface,picMerge)
Pic.Draw(surface1_pic,(x_surface+maxx)-i,y_surface,picMerge)
elsif level=2 then
Pic.Draw(level2pic,-600,60,picCopy)
Pic.Draw(surface2_pic,x_surface-i,y_surface,picMerge)
Pic.Draw(surface2_pic,(x_surface+maxx)-i,y_surface,picMerge)
elsif level=3 then
Pic.Draw(level3pic,-10,60,picCopy)
Pic.Draw(surface3_pic,x_surface-i,y_surface,picMerge)
Pic.Draw(surface3_pic,(x_surface+maxx)-i,y_surface,picMerge)
elsif level=4 then
Pic.Draw(level4pic,-700,100,picCopy)
Pic.Draw(surface4_pic,x_surface-i,y_surface,picMerge)
Pic.Draw(surface4_pic,(x_surface+maxx)-i,y_surface,picMerge)
elsif level=5 then
Pic.Draw(level5pic,-60,60,picCopy)
Pic.Draw(surface5_pic,x_surface-i,y_surface,picMerge)
Pic.Draw(surface5_pic,(x_surface+maxx)-i,y_surface,picMerge)
end if

%function that causes background to appear as it's moving left continuously
if i mod maxx=0 then
x_surface:=x_surface+maxx
end if

%Refills the charge/reload bar at a steady pace so that the player would never be able to have over 6 bullets on the screen at once(reduces lag and prevents spamming)
charge:=round(i)-round(last_shot)

%Draws portal to next level once all the asteroids and monsters have passed
if asteroid_count>=50 and monster_count>=20 then
Pic.Draw(portal,x_portal,y_portal,picMerge)
end if

%Draws ship when still
Pic.Draw(shipstill,x_ship,y_ship,picMerge)

%Determines if any of the 6 bullets on the screen has hit a asteroid or monster that's on the screen
if bullet_count>5 then

    for h:(bullet_count-5)..bullet_count
    
    %Draws bullets if they have not hit anything and are on the screen
    if bullet_impact(h)=false and i-x_bullet_fired(h)<=maxx then
    Pic.Draw(bullet,i-x_bullet_fired(h),y_bullet_fired(h),picMerge)
    end if
	
	%For each of the 50 asteroids
	for u:1..50
	
	if type_asteroid(u)=1 then
       
		if i-x_bullet_fired(h)+10>x_asteroid(u)-i and i-x_bullet_fired(h)<x_asteroid(u)-i and y_bullet_fired(h)+5>y_asteroid(u) and y_bullet_fired(h)+5<y_asteroid(u)+27 and asteroid_impact(u)=false and bullet_impact(h)=false and i-x_bullet_fired(h)<=maxx and x_asteroid(u)-i<=maxx and x_asteroid(u)-i>=-39 then
		asteroid_impact(u):=true
		bullet_impact(h):=true
		score:=score+10
		end if
		
	elsif type_asteroid(u)=2 then
       
		if i-x_bullet_fired(h)+10>x_asteroid(u)-i and i-x_bullet_fired(h)<x_asteroid(u)-i and y_bullet_fired(h)+5>y_asteroid(u) and y_bullet_fired(h)+5<y_asteroid(u)+26 and asteroid_impact(u)=false and bullet_impact(h)=false and i-x_bullet_fired(h)<=maxx and x_asteroid(u)-i<=maxx and x_asteroid(u)-i>=-49 then
		asteroid_impact(u):=true
		bullet_impact(h):=true
		score:=score+10
		end if
		
	elsif type_asteroid(u)=3 then
       
		if i-x_bullet_fired(h)+10>x_asteroid(u)-i and i-x_bullet_fired(h)<x_asteroid(u)-i and y_bullet_fired(h)+5>y_asteroid(u) and y_bullet_fired(h)+5<y_asteroid(u)+43 and asteroid_impact(u)=false and bullet_impact(h)=false and i-x_bullet_fired(h)<=maxx and x_asteroid(u)-i<=maxx and x_asteroid(u)-i>=-25 then
		asteroid_impact(u):=true
		bullet_impact(h):=true
		score:=score+10
		end if

	end if  
     
	end for
	
	%For each of the 20 monsters
	for k:1..20
       
		if i-x_bullet_fired(h)+10>x_monster(k)-i and i-x_bullet_fired(h)<x_monster(k)-i and y_bullet_fired(h)+5>y_monster(k) and y_bullet_fired(h)+5<y_monster(k)+30 and monster_impact(k)=false and bullet_impact(h)=false and i-x_bullet_fired(h)<=maxx and x_monster(k)-i<=maxx and x_monster(k)-i>=-30 then
		monster_impact(k):=true
		bullet_impact(h):=true
		score:=score+20
		end if

	 end for
	
    end for

%Same as before except there are less than 6 bullets fired
elsif bullet_count=1 or bullet_count=2 or bullet_count=3 or bullet_count=4 or bullet_count=5 then

    for o:1..bullet_count
    
    if bullet_impact(o)=false and i-x_bullet_fired(o)<=maxx then
    Pic.Draw(bullet,i-x_bullet_fired(o),y_bullet_fired(o),picMerge)
    end if
    
	for w:1..50
	
	if type_asteroid(w)=1 then
       
		if i-x_bullet_fired(o)+10>x_asteroid(w)-i and i-x_bullet_fired(o)<x_asteroid(w)-i and y_bullet_fired(o)+5>y_asteroid(w) and y_bullet_fired(o)+5<y_asteroid(w)+27 and asteroid_impact(w)=false and bullet_impact(o)=false and i-x_bullet_fired(o)<=maxx and x_asteroid(w)-i<=maxx and x_asteroid(w)-i>=-39 then
		asteroid_impact(w):=true
		bullet_impact(o):=true
		score:=score+10
		end if
		
	elsif type_asteroid(w)=2 then
       
		if i-x_bullet_fired(o)+10>x_asteroid(w)-i and i-x_bullet_fired(o)<x_asteroid(w)-i and y_bullet_fired(o)+5>y_asteroid(w) and y_bullet_fired(o)+5<y_asteroid(w)+26 and asteroid_impact(w)=false and bullet_impact(o)=false and i-x_bullet_fired(o)<=maxx and x_asteroid(w)-i<=maxx and x_asteroid(w)-i>=-49 then
		asteroid_impact(w):=true
		bullet_impact(o):=true
		score:=score+10
		end if
		
	elsif type_asteroid(w)=3 then
       
		if i-x_bullet_fired(o)+10>x_asteroid(w)-i and i-x_bullet_fired(o)<x_asteroid(w)-i and y_bullet_fired(o)+5>y_asteroid(w) and y_bullet_fired(o)+5<y_asteroid(w)+43 and asteroid_impact(w)=false and bullet_impact(o)=false and i-x_bullet_fired(o)<=maxx and x_asteroid(w)-i<=maxx and x_asteroid(w)-i>=-25 then
		asteroid_impact(w):=true
		bullet_impact(o):=true
		score:=score+10
		end if

	end if  
     
	end for
	
	for s:1..20
       
		if i-x_bullet_fired(o)+10>x_monster(s)-i and i-x_bullet_fired(o)<x_monster(s)-i and y_bullet_fired(o)+5>y_monster(s) and y_bullet_fired(o)+5<y_monster(s)+30 and monster_impact(s)=false and bullet_impact(o)=false and i-x_bullet_fired(o)<=maxx and x_monster(s)-i<=maxx and x_monster(s)-i>=-30 then
		monster_impact(s):=true
		bullet_impact(o):=true
		score:=score+20
		end if

	 end for
	
    end for
    
end if

%For each of the 50 asteroids
for m:1..50

    if asteroid_impact(m)=false then 
    
	if type_asteroid(m)=1 and x_asteroid(m)-i<=maxx and x_asteroid(m)-i>=-39 then
	Pic.Draw(asteroid1,x_asteroid(m)-i,y_asteroid(m),picMerge)%Draws asteroid if it has not been hit
    
	    %Hurts player if asteroids touch them
	    if (x_asteroid(m)-i<(x_ship+60)and x_asteroid(m)-i>x_ship or (x_asteroid(m)-i+33)>x_ship and x_asteroid(m)-i<x_ship) and (y_asteroid(m)<(y_ship+20) and y_asteroid(m)>y_ship or (y_asteroid(m)+30)>y_ship and y_asteroid(m)<y_ship) then
	    health:=health-((0.1)*level/2)
	    end if
	    
	elsif type_asteroid(m)=2 and x_asteroid(m)-i<=maxx and x_asteroid(m)-i>=-49 then
	Pic.Draw(asteroid2,x_asteroid(m)-i,y_asteroid(m),picMerge)%Draws asteroid if it has not been hit
    
	    %Hurts player if asteroids touch them
	    if (x_asteroid(m)-i<(x_ship+60)and x_asteroid(m)-i>x_ship or (x_asteroid(m)-i+43)>x_ship and x_asteroid(m)-i<x_ship) and (y_asteroid(m)<(y_ship+20) and y_asteroid(m)>y_ship or (y_asteroid(m)+29)>y_ship and y_asteroid(m)<y_ship) then
	    health:=health-((0.1)*level/2)
	    end if
	    
	elsif type_asteroid(m)=3 and x_asteroid(m)-i<=maxx and x_asteroid(m)-i>=-25 then
	Pic.Draw(asteroid3,x_asteroid(m)-i,y_asteroid(m),picMerge)%Draws asteroid if it has not been hit
	    
	    %Hurts player if asteroids touch them
	    if (x_asteroid(m)-i<(x_ship+60)and x_asteroid(m)-i>x_ship or (x_asteroid(m)-i+19)>x_ship and x_asteroid(m)-i<x_ship) and (y_asteroid(m)<(y_ship+20) and y_asteroid(m)>y_ship or (y_asteroid(m)+46)>y_ship and y_asteroid(m)<y_ship) then
	    health:=health-((0.1)*level/2)
	    end if
	    
	end if
	
    end if

end for

%For each of the 20 monsters
for b:1..20
    
    if monster_impact(b)=false and x_monster(b)-i<=maxx and x_monster(b)-i>=-30 then
		    
	if type_monster(b)=1 and floor(i/100) mod 2=0 then
	Pic.Draw(monster1_open,x_monster(b)-i,y_monster(b),picMerge)%Draws monster if it has not been hit
	elsif type_monster(b)=2 and floor(i/100) mod 2=0 then
	Pic.Draw(monster2_open,x_monster(b)-i,y_monster(b),picMerge)%Draws monster if it has not been hit
	elsif type_monster(b)=3 and floor(i/100) mod 2=0 then
	Pic.Draw(monster3_open,x_monster(b)-i,y_monster(b),picMerge)%Draws monster if it has not been hit
	elsif type_monster(b)=1 and floor(i/100) mod 2=1 then 
	Pic.Draw(monster1_closed,x_monster(b)-i,y_monster(b),picMerge)%Draws monster if it has not been hit
	elsif type_monster(b)=2 and floor(i/100) mod 2=1 then
	Pic.Draw(monster2_closed,x_monster(b)-i,y_monster(b),picMerge)%Draws monster if it has not been hit
	elsif type_monster(b)=3 and floor(i/100) mod 2=1 then
	Pic.Draw(monster3_closed,x_monster(b)-i,y_monster(b),picMerge)%Draws monster if it has not been hit
	end if
	
	%Hurts player if monsters touch them
	if (x_monster(b)-i<(x_ship+60)and x_monster(b)-i>x_ship or (x_monster(b)-i+24)>x_ship and x_monster(b)-i<x_ship) and (y_monster(b)<(y_ship+20) and y_monster(b)>y_ship or (y_monster(b)+33)>y_ship and y_monster(b)<y_ship) then
	health:=health-((0.2)*level/2)
	end if
			
	if x_monster(b)-i=400 then%Each monster will fire their bullet when they reach a x value of 400.
	monster_ammo(b):=true
	end if

    end if  
     
end for

%For each of the 20 monsters' shots
for e:1..20
    
    %Determines intended destination of the shots depending on position of player and monster shooting
    if monster_ammo(e)=true and x_monster(e)-i=400 then
    monster_ammo_x(e):=395-(x_ship+42)
    monster_ammo_y(e):=(y_monster(e)+15)-(y_ship+18)
    time_monster_released(e):=i
    end if
    
    %Makes the bullet move toward their destination
    if monster_ammo(e)=true and monster_ammo_impact(e)=false then
    x_monster_bullet(e):=390-(round(monster_ammo_x(e)/(100-(level-1)*10)))*(1*(i-time_monster_released(e)))
    y_monster_bullet(e):=(y_monster(e)+10)-(round(monster_ammo_y(e)/100))*(1*(i-time_monster_released(e)))
    Pic.Draw(monster_bullet,x_monster_bullet(e),y_monster_bullet(e),picMerge)
    end if
    
    %Hurts the player if the monsters' shots hits the player
    if monster_ammo_impact(e)=false and x_monster_bullet(e)+5<(x_ship+70)and x_monster_bullet(e)+5>x_ship and y_monster_bullet(e)+5<(y_ship+28) and y_monster_bullet(e)+5>y_ship then
    monster_ammo_impact(e):=true
    health:=health-(5*level/2)
    end if
    
end for

%Counts the number of asteroids to determine when portal should appear
if i mod (100-((level-1)*10))=0 then
asteroid_count:=asteroid_count+1
end if

%Counts the number of monsters to determine when portal should appear
if i mod (250-((level-1)*25))=0 then
monster_count:=monster_count+1
end if

%Controls
Input.KeyDown(shipcontrol)

%Shooting
if (shipcontrol('x') or shipcontrol('X'))and charge>=100 and bullet_count<20 then
bullet_count:=bullet_count+1
    %Gets x and y position of bullets when fired
    for q:bullet_count..bullet_count
    x_bullet_fired(q):=i-(x_ship+84)
    y_bullet_fired(q):=y_ship+3
    end for
charge:=0
last_shot:=i%Used to subtract from i so that reload pace is the same for every shot
end if

%Move left
if shipcontrol(KEY_LEFT_ARROW) and x_ship>1 then
x_ship:=x_ship-1
flamecount:=flamecount+0.25
    if flamecount mod 2=0 then
    Pic.Draw(shipmoving1,x_ship,y_ship,picMerge)
    elsif flamecount mod 2=1 then
    Pic.Draw(shipmoving2,x_ship,y_ship,picMerge)
    end if
end if

%Move right
if shipcontrol(KEY_RIGHT_ARROW)and x_ship<555 then
x_ship:=x_ship+1
flamecount:=flamecount+0.25
    if flamecount mod 2=0 then
    Pic.Draw(shipmoving1,x_ship,y_ship,picMerge)
    elsif flamecount mod 2=1 then
    Pic.Draw(shipmoving2,x_ship,y_ship,picMerge)
    end if
end if

%Move up
if shipcontrol(KEY_UP_ARROW) and y_ship<363 then
y_ship:=y_ship+1
flamecount:=flamecount+0.25
    if flamecount mod 2=0 then
    Pic.Draw(shipmoving1,x_ship,y_ship,picMerge)
    elsif flamecount mod 2=1 then
    Pic.Draw(shipmoving2,x_ship,y_ship,picMerge)
    end if
end if

%Move down
if shipcontrol(KEY_DOWN_ARROW) and y_ship>61 then
y_ship:=y_ship-1
flamecount:=flamecount+0.25
    if flamecount mod 2=0 then
    Pic.Draw(shipmoving1,x_ship,y_ship,picMerge)
    elsif flamecount mod 2=1 then
    Pic.Draw(shipmoving2,x_ship,y_ship,picMerge)
    end if
end if 

%Pause the game
if shipcontrol('p') or shipcontrol('P') then
var continue_game:string(1)
    loop
    View.Set("nooffscreenonly")
    cls
    put "Press c to continue"
    getch(continue_game)
	if continue_game="c" or continue_game="C" then
	exit
	end if
    end loop

end if

View.Update
cls
end loop
end game

%Instructions
proc instructions
GUI.Quit
cls
View.Set ("nocursor")
var returnkey1:string(1)
var font_instructions:= Font.New("Arial:20")
var font_instructions_interface:= Font.New("Arial:16")
var textinstructions:="INSTRUCTIONS"
Font.Draw(textinstructions, 220, maxy-30, font_instructions, black)
put "Scitentists have discovered aliens and they are planning an attack on Earth!"
put "The citizens of Earth have sent you to destroy them before they can attack us!"
Pic.Draw(shipstill,116,278,picCopy)
Pic.Draw(bullet,250,280,picCopy)
Pic.Draw(bullet,350,280,picCopy)
Pic.Draw(bullet,450,280,picCopy)
locate(12,22)
put "Press the arrow keys to move around"
locate(13,22)
put "Press x to shoot bullets"
locate(16,8)
put "Make sure your charge meter is full and you have ammo when shooting"

%Draws Charge bar
Font.Draw("Charge", 155, 80, font_instructions_interface, brightblue)
colour(black)
locate(18,32)
put "100/100"
Draw.FillBox(230,80,330,105,brightblue)
Draw.Box(230,80,331,105,black)

%Draws Ammo bar
Font.Draw("Ammo", 350, 80, font_instructions_interface, brightred)
colour(black)
locate(18,54)
put 20, "/20"
Draw.FillBox(415,80,475,105,brightred)
Draw.Box(415,80,476,105,black)

locate(23,28)
put"Press any key to continue"
getch(returnkey1)
cls

locate(1,28)
put "Watch out for asteroids!" 
locate(2,23)
put "They will hurt you if they touch you!"
locate(3,28)
put "Shoot them for 10 points!"

%Draws 3 types of asteroids
Pic.Draw(asteroid1,150,300,picCopy)
Pic.Draw(asteroid2,285,320,picCopy)
Pic.Draw(asteroid3,420,290,picCopy)

locate(9,28)
put "Watch out for aliens!"
locate(10,14)
put "They hurt more than asteroids and they will shoot at you!"
locate(11,27)
put "Shoot them for 20 points!"

%Draws monsters and their bullets
Pic.Draw(monster1_open,150,190,picCopy)
Pic.Draw(monster2_closed,280,170,picCopy)
Pic.Draw(monster3_open,450,180,picCopy)
Pic.Draw(monster_bullet,100,200,picCopy)
Pic.Draw(monster_bullet,360,190,picCopy)

locate(17,22)
put "If your health bar empties, you die!"

%Draws Health bar
Font.Draw("Health", 205, 65, font_instructions_interface, green)
colour(black)
locate(19,38)
put "100/100"
Draw.FillBox(275,65,375,90,green)
Draw.Box(275,65,376,90,black)

locate(23,28)
put"Press any key to continue"
getch(returnkey1)
cls

locate(4,16)
put "Go trhough the portal to refill your health and ammo"
locate(5,24)
put "and to advance to the next level!" 
Pic.Draw(portal,300,270,picCopy)%Draws portal
locate(10,28)
put "Press p to pause the game"
Font.Draw("GOOD LUCK!", 230, 180, font_instructions, brightblue)

locate(23,28)
put"Press any key to continue"
getch(returnkey1)
cls

active_menu:=MENU
end instructions

%Highscores
proc highscores
GUI.Quit
cls
View.Set ("nocursor")
var returnkey2:string(1)
var _name: string
var _score: string
var score_file : int
var font_highscores:= Font.New("Arial:20")
var font_highscores_entries:=Font.New("Arial:16")
var texthighscores:="HIGH SCORES"
Font.Draw(texthighscores, 220, maxy-30, font_highscores, black)

%Gets data from highscores file and puts it to the screen
open : score_file, "HighScores.txt" , get
    for p:1..10
    get: score_file, _name
    get: score_file, _score
    if p=10 then
    Font.Draw (intstr(p) + ". " + _name + "'s score was " + _score, 200, maxy-(p * 25+50), font_highscores_entries, black)
    else
    Font.Draw (intstr(p) + ".   " + _name + "'s score was " + _score, 200, maxy-(p * 25+50), font_highscores_entries, black)
    end if
    end for
close : score_file

locate(23,28)
put"Press any key to continue"
getch(returnkey2)
cls
active_menu:=MENU

end highscores

%winning screen
proc win_screen
Music.PlayFileStop
fork winsound
View.Set ("nooffscreenonly")
View.Update
cls
var submit_choice1:string(1)
Pic.Draw(winpic,-10,-90,picCopy)
loop
getch(submit_choice1)
if submit_choice1="y" or submit_choice1="Y" then
cls
active_menu:=SUBMIT
exit
elsif submit_choice1="n" or submit_choice1="N" then
fork menutheme
cls
active_menu:=SCORES
exit
end if
end loop
end win_screen

%losing screen
proc lose_screen
Music.PlayFileStop
fork failsound
View.Set ("nooffscreenonly")
View.Update
cls
var submit_choice2:string(1)
Pic.Draw(failpic,-10,-90,picCopy)
loop
getch(submit_choice2)
if submit_choice2="y" or submit_choice2="Y" then
cls
active_menu:=SUBMIT
exit
elsif submit_choice2="n" or submit_choice2="N" then
fork menutheme
cls
active_menu:=SCORES
exit
end if
end loop
end lose_screen

%Score Submission
proc submit_score 
View.Set ("nooffscreenonly")
View.Update
cls
View.Set("cursor")
var names: array 1..10 of string
var scores: array 1..10 of int
var score_file: int
    
%gets data from highscores file and puts it to arrays
open : score_file, "HighScores.txt" , get
for i : 1 .. 10
get : score_file, names(i)
get : score_file, scores(i)
end for
close : score_file
    
%gets the player's name and writes it to the file
if score>scores(10) then
    put"Enter your name: "..
    get names(10)
    scores(10):=score
    
    %Makes sure that the highscores sequence is correct
    for k : 1 .. 10
	for i : 1 .. 9
	if scores(i)<scores(i + 1) then
	var temp_name:string:=names(i)
	var temp_score:int:=scores(i)
	names(i):=names(i+1)
	scores(i):=scores(i+1)
	names(i+1):=temp_name
	scores(i+1):=temp_score
	end if
	end for
    end for
    
    %Puts new data onto file
    open : score_file, "HighScores.txt" , put
    for i : 1 .. 10
    put : score_file, names(i)
    put : score_file, scores(i)
    end for
    close : score_file
    fork menutheme
    cls
    active_menu:=SCORES
    
else
    %tells player their score is too low
    put "Sorry, your score is not high enough."
    fork menutheme
    Time.Delay(2000)
    cls
    active_menu:=SCORES
end if
end submit_score

%Thanks them for playing
proc close_screen
Pic.Draw(quitpic,-10,-90,picCopy)
Time.Delay(2000)
quit
end close_screen

%main menu
proc menu
GUI.ResetQuit
View.Set("nocursor")
var font_intro:= Font.New("Arial:56")
var font_selections:=Font.New("Arial:20")
var selection:string(1)
Pic.Draw(menupic,-400,-800,picCopy)%draws background pic
Font.Draw("Space", 150, maxy-120, font_intro, white)
Font.Draw("Adventure", 150, maxy-200, font_intro, white)
buttongame:=GUI.CreateButton(200, 130, 140, "Play Game",game)
buttoninstructions:=GUI.CreateButton(200, 100, 140, "Instructions",instructions)
buttonhighscores:=GUI.CreateButton(200, 70, 140, "Highscores",highscores)
buttonquit:=GUI.CreateButton(200, 40, 140, "Quit",close_screen)
loop
exit when GUI.ProcessEvent
end loop
end menu



%checks which menu should be showing and activates that one
loop
    if active_menu=MENU then
	menu
    elsif active_menu=GAME then
	game
    elsif active_menu=INSTRUCTIONS then
	instructions
    elsif active_menu=SCORES then
	highscores
    elsif active_menu=WIN_SCREEN then
	win_screen
    elsif active_menu=LOSE_SCREEN then
	lose_screen
    elsif active_menu=SUBMIT then
	submit_score
    elsif active_menu=CLOSE then
	close_screen
    end if
end loop

