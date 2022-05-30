if global.Inventory
{
	state = stateFree;
	state();
}
else
{
	state = stateOff;
	state();
}
depth = -200;

image_xscale = 0.5;
image_yscale = 0.5;

x = mouse_x;
y = mouse_y;
