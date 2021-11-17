/// @description A break from things

//x = obj_cs_run.x;
//y = obj_cs_run.y-60;

switch i {
	case 0:
		dialogPart("Well, here goes nothing.");
		break;
	case 1:
		dialogPart("I'm just wondering why gray\nwould have me do this.");
		break;
	case 2:
		dialogPart("Let's just hope I can\nkeep it together.");
		break;
	case 3:
		if bg1.image_alpha != 0 {
			bg1.image_alpha -= 0.01;
		} else {
			i++;
		}
		break;
	case 4:
		dialogPart("I... can do this.");
		break;
	case 5:
		dialogPart("I think.");
		break;
	case 6:
		dialogPart("...");
		break;
	case 7:
		transition(rm_lv2);
}