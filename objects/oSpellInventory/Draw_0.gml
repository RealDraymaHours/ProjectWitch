if global.Inventory
{
	InvSprite = sPlayerBaseStaff;

	draw_sprite_stretched
	(
		sInventoryBackground,
		0,
		x-6,
		y-6,
		12+rowLength*36,
		12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36
	);

	for (var i = 0; i < INVENTORY_SLOTS; i += 1)
	{
		var xx = x + (i mod rowLength) * 36 + 2;
		var yy = y + (i div rowLength) * 36 + 2;
		var hover = (oMouse.inventoryHover == id) && (oMouse.slotHover == i)
		draw_sprite(sInventorySlot,hover,xx,yy)
		
		if (inventory[i] != -1)
		{
			inventoryToSprite(inventory[i]);
			var alpha = 1.0;
			if (oMouse.inventoryDrag == id) && (oMouse.slotDrag == i) alpha = 0.5;
			draw_set_alpha(alpha);
			draw_sprite(InvSprite,0,xx,yy);
			
			/*
			if global.RightIcon == InvSprite
			{
				draw_sprite(spr_RightMouse_Icon,0,xx,yy);	
			}
			else if global.LeftIcon == InvSprite
			{
				draw_sprite(spr_LeftMouse_Icon,0,xx,yy);		
			}
			*/
		
			draw_set_alpha(1.0);
		}
		
	}
}
