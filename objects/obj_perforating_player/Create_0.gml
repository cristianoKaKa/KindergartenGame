/// @description 射孔完井对对碰游戏初始化
//audio_play_sound(snd_bg, 0, true);

drag_num = 0;
_succeed = false;
global.placed_count = 0;
total_items = 7;
_initialized = false;

instance_create_layer(0, 0, "Instances", obj_perforating_tutorial);
