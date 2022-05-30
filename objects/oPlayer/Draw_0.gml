draw_self();
draw_text(x,y-30,depth);

if !Back
{
	switch(state)
	{
		case(IDLE):
			sprite_index = sPlayerIdleFront;
		break;
		case(RUN):
			sprite_index = sPlayerRunFront;
		break;
		case(JUMP):
			sprite_index = sPlayerJump;
		break;
		case(SHOOT):
			sprite_index = sPlayerIdleAttackFront;
		break;
	}
}
else
{
	switch(state)
	{
		case(IDLE):
			sprite_index = sPlayerIdleBack;
		break;
		case(RUN):
			sprite_index = sPlayerRunBack;
		break;
		case(JUMP):
			sprite_index = sPlayerJump;
		break;
		case(SHOOT):
			sprite_index = sPlayerIdleAttackBack;
		break;
	}	
}
