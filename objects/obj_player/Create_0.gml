// Variables
// movement
walkSpeed = 8;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;

//possession
#macro possessionCooldownLength 2.0 //seconds
#macro possessionRange 500
possessionCooldown = 0.0;
currentPossession = id;

isPossessing = false;
