//abilities code
function attack(_x, _y, _dir, _other, _damage) {
	var inst = noone;
	switch _dir {
		case 0: 
			inst = collision_rectangle(_x, _y-attackHeight, _x+attackWidth, _y + attackHeight, _other, false, true); 
			break;
		case 1:
			inst = collision_rectangle(_x-attackHeight, _y, _x+attackHeight, _y - attackWidth, _other, false, true); 
			break;
		case 2:
			inst = collision_rectangle(_x, _y-attackHeight, _x-attackWidth, _y + attackHeight, _other, false, true); 
			break;
		case 3:
			inst = collision_rectangle(_x-attackHeight, _y, _x+attackHeight, _y + attackWidth, _other, false, true);
			break;
	}
	if (inst != noone) {
		show_debug_message("hitting enemy");
		show_debug_message(inst);
		inst.health -= _damage;
		show_debug_message(inst.health);
	}
}


/*
//code for when not possessed
if (!isPossessed) {

}

//code for when possessed
else {
	visible = false;
	x = inst_player.x;
	y = inst_player.y;
} */