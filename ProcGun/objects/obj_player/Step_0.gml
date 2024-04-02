/// @description Insert description here
// You can write your code in this editor
speed_const = 2;


if(keyboard_check(ord("W"))) {
	vspeed = -speed_const;
} else if (keyboard_check(ord("S"))) {
	vspeed = speed_const;
} else {
	vspeed = 0;
}

if(keyboard_check(ord("A"))) {
	hspeed = -speed_const;
} else if(keyboard_check(ord("D"))) {
	hspeed = speed_const;
} else {
	hspeed = 0;
}

if(vspeed != 0 && hspeed != 0) {
	
	vspeed *= 0.707;
	hspeed *= 0.707;
	
	vspeedStr = string(vspeed);
	hspeedStr = string(vspeed);
	
}
