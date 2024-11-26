/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
var center_x = display_get_gui_width() / 2;
var center_y = display_get_gui_height() / 2;

//draw_set_alpha(0);
draw_set_alpha(1);
draw_set_color(c_white);
// 绘制弹窗背景
//draw_rectangle(center_x - 250, center_y - 200, center_x + 250, center_y + 200, true);
draw_sprite(spr_dialog_box, 0, center_x, center_y);

// 绘制当前步骤图片
draw_sprite(steps[current_step], 0, center_x, center_y );

//draw_set_color(c_black);
// 绘制当前步骤说明文本
//draw_text(center_x - 120, center_y + 100, descriptions[current_step]);
if(current_step==total_steps-1){
	draw_sprite(spr_button_done,0,center_x-40, center_y+150)
}else{
	draw_sprite(spr_button_next,0,center_x-40, center_y+150)
}

// 绘制按钮
var button_text = (current_step < total_steps - 1) ? "Next" : "Done";
//draw_text(center_x, center_y + 150, button_text);