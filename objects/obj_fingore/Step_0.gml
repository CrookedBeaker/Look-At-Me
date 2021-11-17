/// @description P O I N T

// Inherit the parent event
event_inherited();

if !global.pause {

image_index = !active;

if !active { //Wait...
	if instance_exists(obj_player) {angle = point_direction(obj_player.x,obj_player.y,x,y)};
	active = (distance_to_object(obj_player) < 64);
} else { //Attack!
	if instance_exists(obj_player) {
		
		targetCoords = [
			obj_player.x+dist*dcos(angle),
			obj_player.y-dist*dsin(angle)
		]
		
		if attackdelay > 0 { //Hover around
			angle++;
			if (angle == 360) {
				angle = 0;
			}
			
			attackdelay--;
		} else { //Okay now attack
			dist--;
			if dist == 5 {
				dist = 48;
				attackdelay = irandom_range(180,300);
			}
		}
		
		image_angle = point_direction(x,y,obj_player.x,obj_player.y)-90;
		if kb == 0 { //Move to desired position smoothly
			trueX += spd*sign(targetCoords[0]-trueX);
			if (abs(targetCoords[0]-trueX) < spd) {trueX = targetCoords[0]}
			y += spd*sign(targetCoords[1]-y);
			if (abs(targetCoords[1]-y) < spd) {y = targetCoords[1]}
		}
	}
}

} else {
	alarm[0]++; //Delay shaking
}