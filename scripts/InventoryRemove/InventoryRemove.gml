// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InventoryRemove(rootObject, itemType) {
	var _slot = InventorySearch(rootObject, itemType);
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = -1;
		return true;
	}
	else return false;
}
