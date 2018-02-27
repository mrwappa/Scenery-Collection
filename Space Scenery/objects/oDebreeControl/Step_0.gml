/// @description Insert description here
// You can write your code in this editor
randomize();
spawnTimer -= 1/room_speed;
if(spawnTimer <= 0 and instance_number(oDebree) <= maxDebrees)
{
	 var spawnX = choose(irandom_range(-34, -55),irandom_range(view_w + 34,view_w+55));
	 var spawnY =  choose(irandom_range(-34, -55),irandom_range(view_h + 34,view_h+55));
	 instance_create(spawnX,spawnY,oDebree);
	 spawnTimer = random_range(0.1,0.3);
}

if(mouse_check_button(mb_left))
{
	instance_create(mouse_x ,mouse_y,oDebree);
}