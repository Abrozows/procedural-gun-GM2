/// @description Insert description here
// You can write your code in this editor


canFire = true;
reloading = false;
speed_picker = irandom_range(0,2);
firespeed = 15;
damage = 10;
magazineSize = 0;
currentMag = 0;
reloadTime = 90;

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
		magazineSize = 45;
		break;
	case 1:
		firespeed = irandom_range(17, 25)
		damage = irandom_range(15, 30);
		magazineSize = 20;
		break;
	case 2:
		firespeed = irandom_range(40, 50);
		damage = irandom_range(50,70)
		sprite_index = spr_ar;
		magazineSize = 12;
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
	
		case 1: 
			shootIncendiary = true;
			break;
		case 2: 
			bulletSpeed = 10;
			break;
		case 3: 
			shootsThree = true;
		case 4: 
			magazineSize *= 2;
	}
	
	
	
}

currentMag = magazineSize;

str_firespeed = string(firespeed);
str_damage = string(damage);
show_debug_message("firespeed: " + str_firespeed + " damage: " + str_damage);
