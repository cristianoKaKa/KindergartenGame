/// @description 根据填充状态绘制
if (filled) {
    // 已填充时完全不透明显示（以正确的角度）
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1.0);
} else {
    // 未填充时半透明显示作为提示
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.3);
}
