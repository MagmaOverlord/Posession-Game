function findClosestInstance(obj) {
	// First, make a list of all instances of the given type
	_num = instance_number(obj);
	for (var i = 0; i < _num; i++ )
	    _list[i] = instance_find(obj, i);

	// Then, deactivate all instances outside the given radius
	for (var i = 0; i < _num; i++ )
	{
	    if (_list[i]
	    && point_distance(_list[i].x, _list[i].y, x, y) > possessionRange)
	        instance_deactivate_object(_list[i]);
	}

	// Then find the furthest instance that is still activated
	_inst = instance_nearest(x, y, obj);

	// Finally, activate all instances we just deactivated.
	for (var i = 0; i < _num; i++ )
	{
	    if (_list[i])
	        instance_activate_object(_list[i]);
	}

	// And return the value
	return _inst;
}

//check for Possession behavior
if (keyboard_check_pressed(vk_space)) {
	if (possessionCooldown <= 0.0) {
		possessionCooldown = possessionCooldownLength;
		//var inst = collision_circle(x, y, possessionRange, obj_enemy1, false, true);
		var inst = findClosestInstance(obj_enemy1);
		if (isPossessing) {
			show_debug_message("is possessing running");
			with (currentPossession) {
				show_debug_message("showing friend");
				isPossessed = false;
				visible = true;
			}
			
			if (inst == noone || inst == currentPossession) {
				isPossessing = false;
			}
			//if no fellas within range
			//isPossessing = false;
			//revert back to spirit state
			
			//if fellas within range
			
		} else {
			show_debug_message("possessing");
			//possess a fella within range
			//isPossessing = true;
			//need to figure out a better way to check collisions but this'll be good enough to test
			if (inst != noone) {
				show_debug_message("found a fella");
				x = inst.x;
				y = inst.y;
				inst.isPossessed = true;
				//grab the sprites of the fella
				//grab the abilities of the fella
				currentPossession = inst;
				isPossessing = true;
			}
		}
	} else {
		//show a message like "it's on cooldown" or play a sound effect or something
	}
}


if (possessionCooldown > 0.0) {
	possessionCooldown -= delta_time / 1000000;
	show_debug_message(possessionCooldown);
}


// Check keys for movement
moveRight = keyboard_check(vk_right);
moveUp = keyboard_check(vk_up);
moveLeft = keyboard_check(vk_left);
moveDown = keyboard_check(vk_down);

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// If Idle
if (vx == 0 && vy == 0) {
// Change idle Sprite based on last direction
//	switch dir {
//		case 0: sprite_index = spr_player_idle_right; break;
//		case 1: sprite_index = spr_player_idle_up; break;
//		case 2: sprite_index = spr_player_idle_left; break;
//		case 3: sprite_index = spr_player_idle_down; break;
//	}

}
// If moving
if (vx != 0 || vy != 0) {
	x += vx;
	y += vy;
	
	// Change walking Sprite based on direction
	if (vx > 0) {
		//sprite_index = spr_player_walk_right;
		dir = 0;
	} else if (vx < 0) {
		//sprite_index = spr_player_walk_left;
		dir = 2;
	} else if (vy > 0) {
		//sprite_index = spr_player_walk_down;
		dir = 3;
	} else if (vy < 0) {
		//sprite_index = spr_player_walk_up;
		dir = 1;
	}
}

