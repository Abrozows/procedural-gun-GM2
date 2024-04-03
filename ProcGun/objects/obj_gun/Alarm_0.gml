/// @description Insert description here
// You can write your code in this editor


instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
{
	speed: bulletSpeed,
	direction: point_direction(x,y,mouse_x,mouse_y),
	isIncendiary: shootIncendiary,
	

});

if(shootsThree) {
	instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
		{
			speed: bulletSpeed,
			direction: point_direction(x,y,mouse_x,mouse_y) - shootAngle,
			isIncendiary: shootIncendiary,
	

	});
	instance_create_layer(spawnx,spawny, "Instances",obj_bullet, 
		{
			speed: bulletSpeed,
			direction: point_direction(x,y,mouse_x,mouse_y) + shootAngle,
			isIncendiary: shootIncendiary,
	

	});
}

currentMag--;

canFire = true;