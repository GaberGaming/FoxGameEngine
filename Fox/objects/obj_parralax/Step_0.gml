var lay_id = layer_get_id("Backgrounds_1")
var back_id = layer_background_get_id(lay_id)
var cam_x = camera_get_view_x(view_camera[0]) ;
var cam_y = camera_get_view_y(view_camera[0]) ;
/*layer_x("Backgrounds_1", cam_x * 0.35); 
layer_y("Backgrounds_1", cam_y * 0.35); 
layer_x("Backgrounds_2", cam_x * 0.25); 
layer_y("Backgrounds_2", cam_y * 0.25);
layer_x("Backgrounds_3", cam_x * 0.5); 
layer_y("Backgrounds_3", cam_y * 0.5);*/
layer_x("Still", cam_x); 
layer_y("Still", cam_y);
