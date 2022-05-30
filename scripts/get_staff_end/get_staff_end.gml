// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_staff_end_x(distanceFromOriginX, distanceFromOriginY)
{ 
	Direction = point_direction(0,0,distanceFromOriginX,distanceFromOriginY);
	Length = point_distance(0,0,distanceFromOriginX,distanceFromOriginY);
	LookAt = point_direction(x,y,mouse_x,mouse_y);
	
	ReturnX = x + lengthdir_x(Length,image_angle+Direction)
	
	return ReturnX;
}

function get_staff_end_y(distanceFromOriginX,distanceFromOriginY)
{
	
	Direction = point_direction(0,0,distanceFromOriginX,distanceFromOriginY);
	Length = point_distance(0,0,distanceFromOriginX,distanceFromOriginY);
	LookAt = point_direction(x,y,mouse_x,mouse_y);
	
	ReturnY = y + lengthdir_x(Length,image_angle+Direction);
	
	return ReturnY;
}
