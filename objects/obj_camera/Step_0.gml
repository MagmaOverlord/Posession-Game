/// @description Insert description here
// You can write your code in this editor
if (instance_exists(follow))
{
	xTO = follow.x;
	yTO = follow.y;
}

//Object Update

x += (xTO - x)/25 ;
y += (yTO - y) /25;

//Camera view Update

camera_set_view_pos(cam,x - (camera_W*0.5),y - (camera_H * 0.5));