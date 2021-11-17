/// @description Make yourself a camera

camera = camera_create();

function Update() {
	if window_get_width() != 0 { //Prevent crashing on minimization
	
	vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	width = window_get_width()/4;
	height = window_get_height()/4;
	pm = matrix_build_projection_ortho(width,height,-10,10000);
	
	camera_set_view_size(camera,width,height);
	surface_resize(application_surface,width,height);
	
	camera_set_view_mat(camera,vm);
	camera_set_proj_mat(camera,pm);
	
	display_set_gui_size(width,height);
	
	}
}

Update();

view_camera[0] = camera;


//Setting boundaries
bounds = [0,0,room_width,room_height];

//Make sure the camera can't go outside the room at spawn
function StayInBounds() {
	if !disableBounds {
		xmin = (bounds[0]+width/2);
		ymin = (bounds[1]+height/2);
		xmax = (bounds[2]-width/2);
		ymax = (bounds[3]-height/2);
		
		x = clamp(x,xmin,xmax);
		y = clamp(y,ymin,ymax);
	}
}

StayInBounds();