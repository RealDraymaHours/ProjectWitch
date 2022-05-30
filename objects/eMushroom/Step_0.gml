if Invunerable
{
	if alarm[0] == -1{alarm[0] = 10;}
}


if (flashAlpha > 0)
{
	flashAlpha -= 0.1;	
}

if Knockback
{
	move_contact_solid(KnockbackDirection, KnockbackStrenght);
	KnockbackStrenght = lerp(KnockbackStrenght,0,0.1);

}

hie = sprite_get_height(sprite_index);
depth = -y - (hie/2);
