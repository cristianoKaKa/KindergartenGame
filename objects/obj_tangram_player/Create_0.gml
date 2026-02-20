show_debug_message("tangram game created!");

drag_num = 0;
global.in_box_cnt = 0;
_succeed = false;

obj_num = 0;
obj_num += instance_number(obj_tangram_slot_triangle);
obj_num += instance_number(obj_tangram_slot_elipse);
obj_num += instance_number(obj_tangram_slot_diamond);
obj_num += instance_number(obj_tangram_slot_rectangle);
obj_num += instance_number(obj_tangram_slot_trapezoid);

show_debug_message("Total tangram slots to fill: " + string(obj_num));

with (obj_tangram_triangle) {
    origin_x = x;
    origin_y = y;
    part_type = "triangle";
}

with (obj_tangram_elipse) {
    origin_x = x;
    origin_y = y;
    part_type = "elipse";
}

with (obj_tangram_diamond) {
    origin_x = x;
    origin_y = y;
    part_type = "diamond";
}

with (obj_tangram_rectangle) {
    origin_x = x;
    origin_y = y;
    part_type = "rectangle";
}

with (obj_tangram_trapezoid) {
    origin_x = x;
    origin_y = y;
    part_type = "trapezoid";
}

//instance_create_layer(0, 0, "Instances", obj_tangram_tutorial);
