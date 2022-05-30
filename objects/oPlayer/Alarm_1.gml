/// @description Regen

if global.Mana <= global.MaxMana
{
	global.Mana += 0.005;
}
else
{
	global.Mana = global.MaxMana;
}

alarm[1] = 1;
