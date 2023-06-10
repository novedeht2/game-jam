#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height)

if (instance_exists(obj_char)) {
	var _x = obj_char.x-view_width/2;
	var _y = obj_char.y-view_height/2;
	camera_set_view_pos(view,_x,_y)
}