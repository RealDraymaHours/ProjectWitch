direction = image_angle

if prevX < x - 30
{
	prevX = x - 29;
}

if prevY > y - 5
{
	prevY = y - 4;
}

if ((Time != 0) && (alarm[0] ==-1)){alarm[0] = Time;}

depth = -y;