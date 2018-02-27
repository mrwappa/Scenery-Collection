/// @description

if(current_state == CloudState.Regular)
{
	depth = 0 + image_xscale / 100;
}
if(sprite_width <= 20)
{
	depth = 2+ image_xscale / 100;	
}

if(current_state == CloudState.Top)
{
	depth = 2+ image_xscale / 100;
}
if(current_state == CloudState.Small)
{
	depth = 2+ image_xscale / 100;
}


x += travelSpeed * CloudDirection;

if(CloudDirection == -1 and x < 0 - 60)
{
	instance_destroy();	
}
if(CloudDirection == 1 and x > view_w + 60)
{
	instance_destroy();	
}