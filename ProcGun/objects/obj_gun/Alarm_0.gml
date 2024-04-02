/// @description Insert description here
// You can write your code in this editor


instance_create_layer(x,y, "Instances",obj_bullet, 
{
	speed: bulletSpeed,
	direction: point_direction(x,y,mouse_x,mouse_y),
	isIncendiary: shootIncendiary,
	

});
canFire = true;