/// @description Insert description here
// You can write your code in this editor


canFire = true;
speed_picker = irandom_range(0,2);
firespeed = 15;
damage = 10;

rarity = irandom(3);

shootIncendiary = false;
shootsThree = false;
bulletSpeed = 5;
shootAngle = irandom_range(5,15);

switch(speed_picker) {

	case 0: 
		firespeed = irandom_range(8,13);
		damage = irandom_range(5, 15);
		sprite_index = spr_smg;
		break;
	case 1:
		firespeed = irandom_range(17, 25)
		damage = irandom_range(15, 30);
		break;
	case 2:
		firespeed = irandom_range(40, 50);
		damage = irandom_range(50,70)
		sprite_index = spr_ar;
		break;
}	

availableMods = ds_list_create();

for(i = 0; i < 5; i++) {
	ds_list_add(availableMods, i);
}

for(i = 0; i < rarity; i++) {
	
	modIndex = irandom(ds_list_size(availableMods)) - 1;
	
	modToAdd = ds_list_find_index(availableMods, modIndex);
	
	switch(modToAdd) {
	
	
	
	}
	
	
	
}


str_firespeed = string(firespeed);
str_damage = string(damage);
show_debug_message("firespeed: " + str_firespeed + " damage: " + str_damage);
