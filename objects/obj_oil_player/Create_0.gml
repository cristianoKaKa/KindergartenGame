/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
show_debug_message("obj oil_player created!");
//audio_play_sound(snd_bg,0,true);

global.in_box_cnt = 0
_succeed = false;

global.black_array = ["0","0","0","0","0"];			//1
global.green_array = ["0","0","0","0","0"];			//2
global.yellow_array = ["0","0","0","0","0"];		//3
global.white_array = ["0","0","0","0","0"];			//4
global.arr_len = 5;
show_debug_message(global.black_array);
// black paramaters
global.black_left = 160;
global.black_right = 660;
global.black_top = 197;
global.black_bottom = 510;
// green paramaters
global.green_left = 930;
global.green_right = 1430;
global.green_top = 197;
global.green_bottom = 510;
// yellow paramaters
global.yellow_left = 160;
global.yellow_right = 660;
global.yellow_top = 551;
global.yellow_bottom = 864;
// white paramaters
global.white_left = 930;
global.white_right = 1430;
global.white_top = 551;
global.white_bottom = 864;

global.pos_black = [320,416];
global.pos_green = [1088,416];
global.pos_yellow = [320,768];
global.pos_white = [1088,768];

interval = 70;
black_drops = [obj_black_drop1, obj_black_drop2, obj_black_drop3, obj_black_drop4]
green_drops = [obj_green_drop1, obj_green_drop2, obj_green_drop3, obj_green_drop4]
white_drops = [obj_white_drop1, obj_white_drop2, obj_white_drop3, obj_white_drop4]
yellow_drops = [obj_yellow_drop1, obj_yellow_drop2, obj_yellow_drop3, obj_yellow_drop4]