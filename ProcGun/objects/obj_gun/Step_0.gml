/// @description Insert description here
// You can write your code in this editor
flipped = false;

if(object_exists(obj_player)) {

	x = obj_player.x;
	y = obj_player.y;

}



image_angle = point_direction(x, y, mouse_x, mouse_y);

if((image_angle > 90 && image_angle < 270)) {
	flipped = true;
	
} else {
	flipped = false;
}

if(flipped) {
	image_angle -= 180;
	image_xscale = -1;
	x -= 7;
} else {
	image_xscale = 1;
}



