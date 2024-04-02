/// @description Insert description here
// You can write your code in this editor

if(object_exists(obj_player)) {

	x = obj_player.x;
	y = obj_player.y;

}

if(flipped) {
	x -= 7;
} else {
	x += 7;
}

if(mouse_check_button(mb_left) && canFire) {
	canFire = false;
	alarm[0] = firespeed;
}