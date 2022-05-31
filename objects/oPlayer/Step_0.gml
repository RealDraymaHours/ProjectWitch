/// @description Check for movement
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));
slash = mouse_check_button(mb_left);
run = keyboard_check(vk_shift);
parry = keyboard_check(ord("Q"));
zoom = keyboard_check(ord("O"));
jump = keyboard_check_pressed(vk_space);

if(run)
	walkSpeed = 7;
else
	walkSpeed = 3.5;

hMove = (right - left) * walkSpeed;
vMove = (down - up) * walkSpeed;


if zoom
{
	//CameraZoom(5,10);
}

if(hMove != 0 or vMove != 0)
	image_speed = walkSpeed / 3;
else {
	image_speed = 1;
	//image_index = 0;
}

#region NORMAL COLLISION

//Horizontal Collisions
if(place_meeting(x + hMove, y, oSolid)) {
	while(!place_meeting(x + sign(hMove), y, oSolid))
		x += sign(hMove);
	hMove = 0;
}

//Vertical Collisions
if(place_meeting(x, y + vMove, oSolid)) {
	while(!place_meeting(x, y + sign(vMove), oSolid))
		y += sign(vMove);
	vMove = 0;
}


#endregion

#region HOLE COLLISION

//Horizontal Collisions
if((place_meeting(x + hMove, y, oSolidHole)) && (state != JUMP)) {
	while(!place_meeting(x + sign(hMove), y, oSolidHole))
		x += sign(hMove);
	hMove = 0;
}

//Vertical Collisions
if((place_meeting(x, y + vMove, oSolidHole)) && (state != JUMP)) {
	while(!place_meeting(x, y + sign(vMove), oSolidHole))
		y += sign(vMove);
	vMove = 0;
}


#endregion
if ((parry) && (!instance_exists(oParry)))
{
	instance_create(x,y,oParry);
}


if !CanShoot
{
	state = SHOOT;
	if Back
	{
		sprite_index = sPlayerIdleAttackBack;	
	}
	else
	{
		sprite_index = sPlayerIdleAttackFront;	
	}
}
else if state == JUMP
{
	
}
else
{
	
	if((right) || (left) || (up) || (down))
	{
		state = RUN;
		if vMove < 0
		{
			Back = true;
		}
		else
		{
			Back = false;
		}
	
	}
	else
	{
		state = IDLE;
	}
	
	if hMove < 0
	{
		image_xscale = -1;
	}
	else if hMove > 0
	{
		image_xscale = 1;
	}
	
	if ((slash) && !global.Inventory)
	{
		image_index = 0;	
		CanShoot = false;
	
		dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
		len = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
		maxdist = 20;
		
		specialX = x +lengthdir_x(maxdist,dir);
		specialY = y +lengthdir_y(maxdist,dir) -1;
		
		staff = instance_create(specialX, specialY, oBaseStaff);
	
		if mouse_y > y - 40
		{
			Back = false;	
			staff.depth = oPlayer.depth - 1;
		}
		else
		{
			Back = true;
			staff.depth = oPlayer.depth + 1;
		}
	
		if mouse_x > x
		{
			image_xscale = 1;	
		}
		else
		{
			image_xscale = -1;	
		}
	}

}

if jump
{
	state = JUMP;
	image_index = 0;
	sprite_index = sPlayerJump;
}

if instance_exists(oParry)
{
	state = PARRY;
}

if ((state = IDLE) || (state = JUMP) || (state = RUN) || (state = SHOOT))
{
	x += hMove;
	y += vMove;
}


hie = sprite_get_height(sprite_index);
depth = -y - (hie/2);

