draw_self();
draw_text(x,y-30,depth);
if(flashAlpha > 0)
{
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index,x,y,image_xscale,image_yscale,image_angle,c_white,flashAlpha);
	shader_reset();
}

