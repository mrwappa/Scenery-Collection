/// @description Insert description here
// You can write your code in this editor

randomize();

globalvar CloudDirection;
CloudDirection = choose(1,-1);

spawnTimer = 0;

for (var i = 0; i < 6; ++i) {
    if(CloudDirection == -1)
	{
		instance_create(view_w + 40 + irandom(10),0,oCloud);
	}
	else
	{
		instance_create(-40 - irandom(10),0,oCloud);
	}
}