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
global.black_left = 20;
global.black_right = 400;
global.black_top = 300;
global.black_bottom = 600;
// green paramaters
global.green_left = 530;
global.green_right = 930;
global.green_top = 300;
global.green_bottom = 600;
// yellow paramaters
global.yellow_left = 20;
global.yellow_right = 400;
global.yellow_top = 670;
global.yellow_bottom = 930;
// white paramaters
global.white_left = 530;
global.white_right = 930;
global.white_top = 670;
global.white_bottom = 930;

global.pos_black = [32,544];
global.pos_green = [544,544];
global.pos_yellow = [32,896];
global.pos_white = [544,896];


black_drops = [obj_black_drop1, obj_black_drop2, obj_black_drop3, obj_black_drop4]
green_drops = [obj_green_drop1, obj_green_drop2, obj_green_drop3, obj_green_drop4]
white_drops = [obj_white_drop1, obj_white_drop2, obj_white_drop3, obj_white_drop4]
yellow_drops = [obj_yellow_drop1, obj_yellow_drop2, obj_yellow_drop3, obj_yellow_drop4]