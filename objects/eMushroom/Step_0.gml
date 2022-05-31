/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



if Knockback
{
	move_contact_solid(KnockbackDirection, KnockbackStrenght);
	KnockbackStrenght = lerp(KnockbackStrenght,0,0.1);

}

hie = sprite_get_height(sprite_index);
depth = -y - (hie/2);
