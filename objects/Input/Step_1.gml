/// @description 
//Directions
kLeft	= keyboard_check(left1)		||	keyboard_check(left2);
kRight	= keyboard_check(right1)	||	keyboard_check(right2);
kUp		= keyboard_check(up1)		||	keyboard_check(up2);
kDown	= keyboard_check(down1)		||	keyboard_check(down2);

kLeftP	= keyboard_check_pressed(left1)		||	keyboard_check_pressed(left2);
kRightP = keyboard_check_pressed(right1)	||	keyboard_check_pressed(right2);
kUpP	= keyboard_check_pressed(up1)		||	keyboard_check_pressed(up2);
kDownP	= keyboard_check_pressed(down1)		||	keyboard_check_pressed(down2);

//Jumping
kJump	= keyboard_check(jump1)				||	keyboard_check(jump2);
kJumpP	= keyboard_check_pressed(jump1)		||	keyboard_check_pressed(jump2);
kJumpR  = keyboard_check_released(jump1)	||	keyboard_check_released(jump2);

kDash	= keyboard_check_pressed(dash1)		||	keyboard_check_pressed(dash2);

kAttack	= keyboard_check(attack1)			||	keyboard_check(attack2);
kAttackP = keyboard_check_pressed(attack1)	||	keyboard_check_pressed(attack2);
kThrow	= keyboard_check_pressed(throw1)	||	keyboard_check_pressed(throw2);

mLeft   = mouse_check_button(mb_left);
mRight  = mouse_check_button(mb_right);

mLeftP  = mouse_check_button_pressed(mb_left);
mRightP = mouse_check_button_pressed(mb_right);

mLeftR  = mouse_check_button_released(mb_left);
mRightR = mouse_check_button_released(mb_right);