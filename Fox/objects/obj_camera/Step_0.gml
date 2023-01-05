/*camera_set_view_size(view_camera[0],global.zoomwidth,global.zoomheight)
if global.zoomwidth < global.targetwidth
	global.zoomwidth += 40
if global.zoomwidth > global.targetwidth
	global.zoomwidth -= 20
if global.zoomheight < global.targetheight
	global.zoomheight += 40
if global.zoomheight > global.targetheight
	global.zoomheight -= 20*/
if hudtime < 0
hudy -= 15
hudtime--
if hudy < -255 and hudtime < 0
{
	hud = 0
	hudy = -256
}
if hudtime > 0 and hudy != 6
	hudy += 7.5
if hudy > 6
	hudy = 6
//this is cahnges the zoom based on scolling but you can set it how ever you like
//zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.5, 2);
if zoom_level < 1
	zoom_level += 0.1
//Get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//Set the rate of interpolation
var rate = 0.2;

//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);

//change coordinates of camera so zoom is centered
var new_x = lerp(vpos_x,vpos_x+(view_w - zoom_level * default_zoom_width)/2, rate);
var new_y = lerp(vpos_y,vpos_y+(view_h - zoom_level * default_zoom_height)/2, rate);
