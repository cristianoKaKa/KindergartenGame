event_inherited();

placed = false;
start_x = x;
start_y = y;

target_box_type = "";
order_num = 0;
target_x = 0;
target_y = 0;
target_depth = 0;

var _sea_box = instance_find(obj_box_sea, 0);
var _earth_box = instance_find(obj_box_earth, 0);

if (_sea_box == noone || _earth_box == noone) exit;

var _box_w = sprite_get_width(spr_red_box);
var _box_h = sprite_get_height(spr_red_box);

var _sea_cx = _sea_box.x + (_box_w * _sea_box.image_xscale) / 2;
var _sea_top = _sea_box.y + 5;
var _earth_cx = _earth_box.x + (_box_w * _earth_box.image_xscale) / 2;
var _earth_top = _earth_box.y + 5;

switch (object_index) {
    case obj_oil_hide_sea_layer_1:
        target_box_type = "sea"; order_num = 1;
        target_x = _sea_cx; target_y = _sea_top + 150; target_depth = -2;
        break;
    case obj_oil_hide_sea_layer_2:
        target_box_type = "sea"; order_num = 2;
        target_x = _sea_cx; target_y = _sea_top + 140; target_depth = -3;
        break;
    case obj_oil_hide_sea_layer_3:
        target_box_type = "sea"; order_num = 3;
        target_x = _sea_cx; target_y = _sea_top + 125; target_depth = -4;
        break;
    case obj_oil_hide_sea_layer_4:
        target_box_type = "sea"; order_num = 4;
        target_x = _sea_cx; target_y = _sea_top + 105; target_depth = -5;
        break;
    case obj_oil_hide_sea_layer_5:
        target_box_type = "sea"; order_num = 5;
        target_x = _sea_cx; target_y = _sea_top + 75; target_depth = -6;
        break;
    case obj_oil_hide_sea_layer_6:
        target_box_type = "sea"; order_num = 6;
        target_x = _sea_cx; target_y = _sea_top + 50; target_depth = -7;
        break;
    case obj_oil_hide_sea_animal:
        target_box_type = "sea"; order_num = 7;
        target_x = _sea_cx; target_y = _sea_box.y + _box_h / 2; target_depth = -9;
        break;
    case obj_oil_hide_oil_drop_1:
        target_box_type = "sea"; order_num = 8;
        target_x = _sea_cx - 80; target_y = _sea_top + 125; target_depth = -8;
        break;

    case obj_oil_hide_earth_layer_1:
        target_box_type = "earth"; order_num = 1;
        target_x = _earth_cx; target_y = _earth_top + 150; target_depth = -2;
        break;
    case obj_oil_hide_earth_layer_2:
        target_box_type = "earth"; order_num = 2;
        target_x = _earth_cx; target_y = _earth_top + 140; target_depth = -3;
        break;
    case obj_oil_hide_earth_layer_3:
        target_box_type = "earth"; order_num = 3;
        target_x = _earth_cx; target_y = _earth_top + 125; target_depth = -4;
        break;
    case obj_oil_hide_earth_layer_4:
        target_box_type = "earth"; order_num = 4;
        target_x = _earth_cx; target_y = _earth_top + 105; target_depth = -5;
        break;
    case obj_oil_hide_earth_layer_5:
        target_box_type = "earth"; order_num = 5;
        target_x = _earth_cx; target_y = _earth_top + 75; target_depth = -6;
        break;
    case obj_oil_hide_earth_layer_6:
        target_box_type = "earth"; order_num = 6;
        target_x = _earth_cx; target_y = _earth_top + 50; target_depth = -7;
        break;
    case obj_oil_hide_earth_animal:
        target_box_type = "earth"; order_num = 7;
        target_x = _earth_cx; target_y = _earth_box.y + _box_h / 2; target_depth = -9;
        break;
    case obj_oil_hide_oil_drop_2:
        target_box_type = "earth"; order_num = 8;
        target_x = _earth_cx + 80; target_y = _earth_top + 125; target_depth = -8;
        break;
}
