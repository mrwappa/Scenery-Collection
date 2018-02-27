/// @description Insert description here
// You can write your code in this editor
/*if(current_state == RockState.Regular)
{
	depth = 0 + image_xscale / 100;
	
}
if(current_state == RockState.Small)
{
	depth = 0 + image_xscale / 100;
}
if(current_state == RockState.Tiny)
{
	depth = 2 + image_xscale / 100;
}*/

if(sprite_width + sprite_height <= (oMoon.sprite_width + oMoon.sprite_height)/9)
{
	depth = 2 + image_xscale / 100;
}
else
{
	depth = 0 + image_xscale / 100;
}
if(image_xscale <= 0.6 and current_state == RockState.Tiny)
{
	depth = 4 + image_xscale / 100;
}

image_angle += angle_speed;

aliveTimer -= 1/room_speed;

if(x < 0 - 50 or x > view_w +50 or y < 0 -50 or y > view_h + 50 and aliveTimer <= 0)
{ 
	instance_destroy();
}
x+= lengthdir_x(travel_speed,dir);
y+= lengthdir_y(travel_speed,dir);