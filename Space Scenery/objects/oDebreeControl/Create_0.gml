/// @description Insert description here
// You can write your code in this editor
randomize();
for (var i = 0; i < 5; ++i) {
    instance_create(irandom_range(0,view_w),irandom_range(0,view_h),oDebree);
}

maxDebrees = 120;

spawnTimer = 0;
spawnInterval = 0.1;