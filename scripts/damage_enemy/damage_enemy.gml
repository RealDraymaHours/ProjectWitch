// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_enemy()
{
	
			//audio_play_sound(PlayerHit1,1,false);

/*
	if (timeline_running == false)
	{
		timeline_index = tml_damage_effect;
		timeline_position = 0;
		timeline_running = true;
	}
*/
	Enemy.flashAlpha = 1;
	Enemy.Health = (Enemy.Health - other.Damage);
	alarm[11] = Enemy.StaggerTime;
	Enemy.Staggered = true;
	
	if Enemy.state != "STUNNED"
	{
		Enemy.FinisherMeter += Hitbox.Stagger;		
	}


	if (Hitbox.Break > Enemy.Poise)
	{
		Enemy.Knockback = true;
		Enemy.KnockbackStrenght = Hitbox.KnockbackStrenght;
		Enemy.KnockbackDirection = Hitbox.KnockbackDirection;
		alarm[8] = Hitbox.KnockbackLenght
	}
    CameraShake(8,2);
	
	sound = irandom(4);
	
	switch(sound)
	{
		case(0):
			audio_play_sound(SwordHit1,1,false);
		break;
		case(1):
			audio_play_sound(SwordHit2,1,false);
		break;
		case(2):
			audio_play_sound(SwordHit3,1,false);
		break;
		case(3):
			audio_play_sound(SwordHit4,1,false);
		break;
		case(4):
			audio_play_sound(SwordHit5,1,false);
		break;
	}

}