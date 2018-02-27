/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(mb_left))
{
	if(CloudDirection == -1)
	{
		instance_create(view_w + 60,0,oCloud);
	}
	else
	{
		instance_create(-60 ,0,oCloud);
	}	
}

if(spawnTimer <= 0 and instance_number(oCloud) <= 120)
{
	if(CloudDirection == -1)
	{
		instance_create(view_w + 60,0,oCloud);
	}
	else
	{
		instance_create(-60 ,0,oCloud);
	}
	spawnTimer = irandom(0.4);
}

