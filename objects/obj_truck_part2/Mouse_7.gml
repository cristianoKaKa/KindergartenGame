/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(!grab) return;	//避免一个鼠标释放操作激活多个instance的事件
grab = false;
depth = 1;
audio_play_sound(snd_pop,0,false);

obj_fire_scare_player.drag_num-=1;