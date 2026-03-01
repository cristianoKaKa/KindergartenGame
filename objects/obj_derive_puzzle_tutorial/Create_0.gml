/// @description 石油衍生品拼图教程初始化
current_step = 0;

// TODO: 创建专门的教程图片后替换 spr_derive_puzzle_tutorial_1
steps = [spr_derive_puzzle_tutorial_1,spr_derive_puzzle_tutorial_2,spr_derive_puzzle_tutorial_3];

// TODO: 录制专门的语音后替换 snd_derive_puzzle_tutorial_1
sounds = [snd_derive_puzzle_1,snd_derive_puzzle_2,snd_derive_puzzle_3];

descriptions = ["石油衍生品拼图"];
total_steps = array_length(steps);

audio_play_sound(sounds[current_step], 0, false);
