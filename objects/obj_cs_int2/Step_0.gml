/// @description Another break from things

//x = obj_cs_run.x;
//y = obj_cs_run.y-60;

switch i {
	case 0:
		dialogPart("I've made it this far...");
		break;
	case 1:
		dialogPart("I must be doing something right.");
		break;
	case 2:
		dialogPart("Everyone doesn't seem to remember\nmy past screwups.");
		break;
	case 3:
		if bg1.image_alpha != 0 {
			bg1.image_alpha -= 0.01;
		} else {
			i++;
		}
		break;
	case 4:
		dialogPart("Not sure what that's about.");
		break;
	case 5:
		dialogPart("Am I missing something?");
		break;
	case 6:
		dialogPart("...");
		break;
	case 7:
		dialogPart("At least I'm almost there.");
		break;
	case 8:
		transition(rm_lv3_dark);
}