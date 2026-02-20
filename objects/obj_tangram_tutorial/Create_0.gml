current_step = 0;

// TODO: 创建专用教程图片精灵 spr_tangram_tutorial_1 等后替换下面的精灵
steps = [spr_tangram_tutorial_1, spr_tangram_tutorial_2,spr_tangram_tutorial_3];

// TODO: 创建专用教程语音 snd_tangram_1 等后替换下面的声音
sounds = [snd_tangram_1, snd_tangram_2,snd_tangram_3];

descriptions = ["新能源七巧板"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
