/// @description Begin it!!!

switch i {
	case 0:
		dialogPart("Ever since we got this mirror,\nI've caught myself staring into it.");
		break;
	case 1:
		dialogPart("There's just something\nalluring about it.");
		break;
	case 2:
		dialogPart("Looking at myself makes me worry.");
		break;
	case 3:
		dialogPart("Worry about my friends.\nWhat do they think of me?");
		break;
	case 4:
		dialogPart("They're patient with me. Reassuring.\nBut I still worry.");
		break;
	case 5:
		dialogPart("Do they not see what I see?");
		break;
	case 6:
		shiftPart(obj_player.x,obj_player.y,2);
		break;
	case 7:
		dialogPart("Maybe I should go do something else.");
		break;
	case 8:
		endCS();
}