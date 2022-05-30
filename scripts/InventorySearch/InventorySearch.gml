// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InventorySearch(rootObject, itemType)
{
	for(var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		if (rootObject.inventory[i] == itemType)
		{
			return(i);
		}
	}
	return(-1);
}

function InventoryIsFull(rootObject)
{
	CurrentState = false;

	for(var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		if (rootObject.inventory[i] != -1)
		{
			CurrentState = false;
		}
		else
		{
			CurrentState = true;
		}
	}
	
	return CurrentState;
}
