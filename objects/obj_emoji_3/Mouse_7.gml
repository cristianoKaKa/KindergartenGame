/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
event_inherited();
depth = -1;

var _controller = instance_find(obj_oil_distrubution_player,0);

if(x>global.box_1_left && x<global.box_1_right && y>global.box_1_top && y<global.box_1_bottom){
	x = _controller.emoji_pos[0][0];
	y = _controller.emoji_pos[0][1];
	audio_play_sound(snd_pop,0,false)
	if(!in_box) global.in_box_cnt+=1;
	in_box = true;
}else if(x>global.box_2_left && x<global.box_2_right && y>global.box_2_top && y<global.box_2_bottom){
	x = _controller.emoji_pos[1][0];
	y = _controller.emoji_pos[1][1];
	audio_play_sound(snd_pop,0,false)
	if(!in_box) global.in_box_cnt+=1;
	in_box = true;
}else if(x>global.box_3_left && x<global.box_3_right && y>global.box_3_top && y<global.box_3_bottom){
	x = _controller.emoji_pos[2][0];
	y = _controller.emoji_pos[2][1];
	audio_play_sound(snd_pop,0,false)
	if(!in_box) global.in_box_cnt+=1;
	in_box = true;
}else if(x>global.box_4_left && x<global.box_4_right && y>global.box_4_top && y<global.box_4_bottom){
	x = _controller.emoji_pos[3][0];
	y = _controller.emoji_pos[3][1];
	audio_play_sound(snd_pop,0,false)
	if(!in_box) global.in_box_cnt+=1;
	in_box = true;
}else if(x>global.box_5_left && x<global.box_5_right && y>global.box_5_top && y<global.box_5_bottom){
	x = _controller.emoji_pos[4][0];
	y = _controller.emoji_pos[4][1];
	audio_play_sound(snd_pop,0,false)
	if(!in_box) global.in_box_cnt+=1;
	in_box = true;
}
else{
	x = origin_x;
	y = origin_y;
	if(in_box) global.in_box_cnt-=1;
	in_box = false;
	audio_play_sound(snd_beep_warning,0,false)
}
show_debug_message("in box cnt = {0}", global.in_box_cnt);