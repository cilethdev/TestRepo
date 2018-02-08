/// @description
if !triggerCD {
	triggerCD = 30;
	other.y--;
	other.vy = vbounce;
	other.jNum = 1;
	other.bounce = true;
	other.xscale = 0.5;
	other.yscale = 1.5;
}