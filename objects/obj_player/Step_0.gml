//check for Possession behavior
if (keyboard_check_pressed(vk_space)) {
	if (possessionCooldown == 0) {
		possessionCooldown == possessionCooldownLength;
		if (isPossessing) {
			//if no fellas within range
			//isPossessing = false;
			//revert back to spirit state
			
			//if fellas within range
			
		} else {
			//possess a fella within range
			isPossessing = true;
			//need to figure out a better way to check collisions but this'll be good enough to implement for now
			var inst = collision_circle(x, y, possessionRange, obj_enemy1, false, true);
			if (inst != noone) {
				
			}
		}
	} else {
		//show a message like "it's on cooldown" or play a sound effect or something
	}
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
