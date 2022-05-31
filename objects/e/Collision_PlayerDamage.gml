/// @description 
if !Invunerable
{
	Knockback = true;	
	KnockbackDirection = other.KnockbackDirection;
	KnockbackStrenght = other.KnockbackStrenght;
	flashAlpha = 1;
	Invunerable = true;
	alarm[0] = other.KnockbackTime;
}
