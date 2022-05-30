// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventoryToSprite(inventoryIndex)
{
	InvSprite = sPlayerBaseStaff;
	
	switch(inventoryIndex)
	{
		case 1:
			InvSprite = sInventoryFireballBlue;
		break;
		case 2:
			InvSprite = sInventoryFireballRed;
		break;
	}
	
	return InvSprite;

}
