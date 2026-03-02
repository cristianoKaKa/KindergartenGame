/// @description 初始化拖拽属性和分类
grab = false;
xx = 0;
yy = 0;
origin_x = x;
origin_y = y;
placed = false;

var _name = object_get_name(object_index);
var _parts = string_split(_name, "_");
category = _parts[3];
