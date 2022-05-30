// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_player(Amount)
{
	audio_play_sound(PlayerDamage,10,false);
	if !oPlayer.Staggered
	{
		global.Health -= Amount;
		with (oCamera) {
			CameraShake(8,2);
		}
	/*
		repeat(Amount)
		{
			instance_create(otherX, otherY, obj_SoulHit);	
		}	
	*/
		oPlayer.Staggered = true;
	}	
}



function DamageEnemyOther(Enemy, Damage, FinishMeterGain)
{
	

	Enemy.flashAlpha = 1;
	Enemy.Health = (Enemy.Health - Damage);
	
	Enemy.FinisherMeter += FinishMeterGain;
	
	Enemy.alarm[11] = Enemy.StaggerTime;
	Enemy.Staggered = true;
	
    ShakeCamera(8,2);
	
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

