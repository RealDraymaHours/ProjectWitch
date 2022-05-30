// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawPlayerUI(){
	
healthbar_width = 131;
healthbar_height = 12;
healthbar_x = 32;
healthbar_y = 20;
	
//Healthbar
draw_sprite(sBar,0, healthbar_x, healthbar_y);
draw_sprite(sBar,0, healthbar_x, healthbar_y + 22);

draw_sprite(sBarBackground,0, healthbar_x, healthbar_y);

draw_sprite(sBarBackground,0, healthbar_x, healthbar_y + 22);

draw_sprite_stretched(sManaBar,0,healthbar_x + 3 ,healthbar_y + 25,(global.Mana/global.MaxMana) * healthbar_width, healthbar_height);
draw_sprite_stretched(sHealthBar,0,healthbar_x + 3,healthbar_y+3,(global.Health/global.MaxHealth) * healthbar_width, healthbar_height);

//mana

}
