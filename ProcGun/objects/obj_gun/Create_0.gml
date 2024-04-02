/// @description Insert description here
// You can write your code in this editor


canFire = true;
speed_picker = irandom_range(0,2);
firespeed = 15;
damage = 10;

switch(speed_picker) {

	case 0: 
		firespeed = irandom_range(8,13);
		damage = irandom_range(5, 15);
		break;
	case 1:
		firespeed = irandom_range(17, 25)
		damage = irandom_range(15, 30);
		break;
	case 2:
		firespeed = irandom_range(40, 50);
		damage = irandom_range(50,70)
}	





str_firespeed = string(firespeed);
str_damage = string(damage);
show_debug_message("firespeed: " + str_firespeed + " damage: " + str_damage);
