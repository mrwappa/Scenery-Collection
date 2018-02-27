/// @description Insert description here
// You can write your code in this editor
randomize();

aliveTimer = 3;

sprite_index = choose(sRock1,sRock2,
sSmallRock1,sSmallRock1,sSmallRock2,sSmallRock2,
sTinyRock1,sTinyRock1,sTinyRock2,sTinyRock2,sTinyRock3,sTinyRock3);

enum RockState
{
	Regular,
	Small,
	Tiny
}
current_state = RockState.Regular;


if(sprite_index == sSmallRock1 or sprite_index == sSmallRock2)
{
	current_state = RockState.Small;
}
if(sprite_index == sTinyRock1 or sprite_index == sTinyRock2 or sprite_index == sTinyRock3)
{
	current_state = RockState.Tiny;	
}

image_xscale = random_range(0.3,1.2);
image_yscale = image_xscale;

angle_speed = random_range(0.1,0.5);
angle_speed = choose(angle_speed,-angle_speed);

dir = point_direction(x,y,view_w/2,view_h/2) + choose(irandom_range(0,40),irandom_range(0,-40));
travel_speed = random_range(0.1,1.2);