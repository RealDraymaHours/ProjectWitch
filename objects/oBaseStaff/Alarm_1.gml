if global.Mana >= 1
{
	instance_create(xp,yp,global.EquipedSpell);
	global.Mana -= 1
}
else
{
	eff = instance_create(xp,yp,oEffect);
	eff.sprite_index = sPoof;
}
