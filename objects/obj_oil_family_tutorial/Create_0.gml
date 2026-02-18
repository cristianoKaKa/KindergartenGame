/// @description Setup tutorial steps
current_step = 0;
steps = [spr_oil_family_tutorial_1, spr_oil_family_tutorial_2,spr_oil_family_tutorial_3];
sounds = [snd_oil_family_1, snd_oil_family_2, snd_oil_family_3];
descriptions = [
	"first",
	"second"
];
total_steps = array_length(steps);
audio_play_sound(sounds[current_step], 0, false);
