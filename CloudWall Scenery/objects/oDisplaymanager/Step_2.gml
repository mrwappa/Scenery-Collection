/// @descriptions
view_x=clamp(view_x,0,room_width-view_w);
view_y=clamp(view_y,0,room_height-view_h);

if(view_w & 1)
{
	view_w++;
}
if(view_h &  1)
{
	view_h++;
}

surface_resize(application_surface,view_w,view_h);

camera_set_view_size(view_camera[0],view_w,view_h);

var _round = round(view_w/surface_get_width(application_surface));
camera_set_view_pos(view_camera[0],round_n(view_x,_round),round_n(view_y,_round));

