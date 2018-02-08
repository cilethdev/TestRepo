/// @description
var updated = false;
if menuPos == -1 && (Input.kUpP || Input.kDownP) {
	menuPos = 0;
	updated = true;
}
if menuPos != -1 && keyboard_check_pressed(vk_escape) {
	menuPos = -1;
	updated = true;
}

if !updated && Input.kDownP {
	menuPos++;
	if menuPos > nItems {
		menuPos = 0;
	}
	updated = true;
}

if !updated && Input.kUpP {
	menuPos--;
	if menuPos < 0 {
		menuPos = nItems;
	}
	updated = true;
}

if updated {
	var pos = menuPos;
	with(par_menuItem) {
		if num == pos {
			focus = true;
			xscale = 1.2;
			yscale = 1.2;
		} else {
			focus = false;
		}
	}
}