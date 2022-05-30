// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function inventoryToObject(inventoryIndex)
{
	InvObj = oFireball;
	
	switch(inventoryIndex)
	{
		case 1:
			InvObj = oFireball
		break;
		case 2:
			InvObj = oFireballRed
		break;
	}
	
	return InvObj
}
