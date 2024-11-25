/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
var center_x = display_get_gui_width() / 2;
var center_y = display_get_gui_height() / 2;
var x1 = center_x - 40; // 左上角X坐标
var x2 = center_x + 40; // 右上角的X坐标
var y1 = center_y + 150; // 左上角的Y坐标
var y2 = center_y + 230; // 左下角的Y坐标

// 检查鼠标是否在指定区域内
if (mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2) {
    window_set_cursor(cr_handpoint); // 设置鼠标图标为手指
} else {
    window_set_cursor(cr_default); // 设置鼠标图标为默认
}

if (mouse_check_button_pressed(mb_any)){
	if(mouse_x >x1 && mouse_x<x2 && mouse_y>y1 && mouse_y<y2){
		if(current_step<total_steps-1){
			audio_pause_sound(sounds[current_step]);
			current_step+=1;
			audio_play_sound(sounds[current_step],0,false);
		}else{
			instance_destroy();
			audio_play_sound(snd_bg,0,true);
			draw_set_color(c_white);
		}
	}
}

if(current_step>=total_steps){
	window_set_cursor(cr_default); // 设置鼠标图标为默认
}