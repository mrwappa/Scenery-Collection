/// @description
randomize();
sprite_index = choose(sCloud1,sCloud3,sCloud4,sCloud5,sCloud6,sCloud7,sSmallCloud,
sTopCloud1,sTopCloud2,sTopCloud3,sTopCloud4);

enum CloudState
{
	Regular,
	Top,
	Small
}

current_state = CloudState.Regular;

if(sprite_index == sTopCloud1 or sprite_index == sTopCloud2 or
   sprite_index == sTopCloud3 or sprite_index == sTopCloud4)
{
	current_state = CloudState.Top;
}
if(sprite_index == sSmallCloud)
{
	current_state = CloudState.Small;
}

travelSpeed = random_range(0.08,0.8);

image_xscale = random_range(0.4,1);
image_yscale = image_xscale;

if(current_state == CloudState.Regular)
{
	y = irandom_range(60,140);
}

if(current_state == CloudState.Top)
{
	y = irandom_range(10,50);
}
if(current_state == CloudState.Small)
{
	y = irandom_range(30,140);
}

