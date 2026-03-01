/// @description 怕火的油罐车游戏初始化
show_debug_message("obj fire_scare_player created!");
//audio_play_sound(snd_bg,0,true);

drag_num = 0;
_succeed = false;

global.box_1_pos = [[192,416],[384,416],[192,576],[384,576]]
global.box_2_pos = [[1088,416],[1312,416],[1088,576],[1312,576]]
global.box_3_pos = [[640,736],[864,736]]
global.truck_pos = [672,512];
global.oil_bucket_pos = [768,501]
global.wheel_pos = [[704,625],[768,625],[832,625],[896,625]]
global.box_1 = ["0","0","0","0"]
global.box_2 = ["0","0","0","0"]
global.box_3 = ["0","0"]
global.box_wheel = ["0","0","0","0"]
global.cnt1 = 0
global.cnt2 = 0
global.cnt3 = 0
global.cnt_truck = 0;

instance_create_layer(0, 0, "Instances", obj_fire_scare_tutorial);
