/// @description Insert description here
// You can write your code in this editor


if event_data[?"event_type"] == "sprite event"
{
	switch(event_data[? "message"])
	{
		case("create_BaseHunterMeleeSide"):
			Bullet = instance_create(x,y, eBaseHunterSideBullet);
			Bullet.sprite_index = sBaseHunterMeleeSideBullet;
			Bullet.Damage = 1;
			Bullet.Time = 240;
			Bullet.image_angle = image_angle;
			Bullet.direction = direction;
			Bullet.speed = 8;
			
			Bullet2 = instance_create(x,y, eBaseHunterSideBullet);
			Bullet2.sprite_index = sBaseHunterMeleeSideBullet;
			Bullet2.Damage = 1;
			Bullet2.Time = 240;
			Bullet2.image_angle = image_angle + 30;
			Bullet2.direction = direction;
			Bullet2.speed = 8;
			
			Bullet3 = instance_create(x,y, eBaseHunterSideBullet);
			Bullet3.sprite_index = sBaseHunterMeleeSideBullet;
			Bullet3.Damage = 1;
			Bullet3.Time = 240;
			Bullet3.image_angle = image_angle - 30;
			Bullet3.direction = direction;
			Bullet3.speed = 8;
		break;
	}
}