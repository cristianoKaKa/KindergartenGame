/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
current_step = 0;
steps = [spr_co_pm_1, spr_co_pm_2, spr_co_pm_3]; // 存储步骤对应的图片
sounds = [snd_co_snd_1, snd_co_snd_2, snd_co_snd_3];	//存储步骤对应声音
/*descriptions = [
    "第一步：拖动对象。",
    "第二步：将对象拖动到指定位置。",
    "第三步：点击完成按钮以开始游戏。"
];*/
descriptions = [
	"first",
	"second",
	"third"
]
total_steps = array_length(steps); // 总步骤数
audio_play_sound(sounds[current_step],0,false);