// Movement controls

//RUN
if (keyboard_check(global.ctrl_shift) and !global.frozen) { 
	spd = 7;
} else { spd = 5; }

sqrtspd = spd / sqrt(2)



//DOWN
if (keyboard_check(global.ctrl_down) and !keyboard_check(global.ctrl_right) and !keyboard_check(global.ctrl_left) and !global.frozen) { 
	global.player_facing = 0;
	if (place_free(x, y + collisionspd)) {
		y += spd;
	}
}
//DOWNRIGHT
if (keyboard_check(global.ctrl_down) and keyboard_check(global.ctrl_right) and !global.frozen) { 
	global.player_facing = 1;
	if (place_free(x + collisionspd, y + collisionspd)) {
		y += sqrtspd;
		x += sqrtspd;
	}
}
//RIGHT
if (keyboard_check(global.ctrl_right) and !keyboard_check(global.ctrl_up) and !keyboard_check(global.ctrl_down) and !global.frozen) { 
	global.player_facing = 2;
	if (place_free(x + collisionspd, y)) {
		x += spd;
	}
}
//RIGHTUP
if (keyboard_check(global.ctrl_right) and keyboard_check(global.ctrl_up) and !global.frozen) { 
	global.player_facing = 3;
	if (place_free(x + collisionspd, y - collisionspd)) {
		y -= sqrtspd;
		x += sqrtspd;
	}
}
//UP
if (keyboard_check(global.ctrl_up) and !keyboard_check(global.ctrl_left) and !keyboard_check(global.ctrl_right) and !global.frozen) { 
	global.player_facing = 4;
	if (place_free(x, y - collisionspd)) {
		y -= spd;
	}
}
//UPLEFT
if (keyboard_check(global.ctrl_up) and keyboard_check(global.ctrl_left) and !global.frozen) { 
	global.player_facing = 5;
	if (place_free(x - collisionspd, y - collisionspd)) {
		y -= sqrtspd;
		x -= sqrtspd;
	}
}
//LEFT
if (keyboard_check(global.ctrl_left) and !keyboard_check(global.ctrl_down) and !keyboard_check(global.ctrl_up) and !global.frozen) { 
	global.player_facing = 6;
	if (place_free(x - collisionspd, y)) {
		x -= spd;
	}
}
//LEFTDOWN
if (keyboard_check(global.ctrl_left) and keyboard_check(global.ctrl_down) and !global.frozen) { 
	global.player_facing = 7;
	if (place_free(x - collisionspd, y + collisionspd)) {
		y += sqrtspd;
		x -= sqrtspd;
	}
}

switch (global.player_facing) { // Facing handler
	case 0: 
		sprite_index = spr_char_facingdown; 
		inst = instance_place(x, y + collisionspd, sys_check);
		break;
	case 1: 
		sprite_index = spr_char_facingdownright; 
		inst = instance_place(x + (collisionspd / sqrt(2)), y + (collisionspd / sqrt(2)), sys_check);
		break;
	case 2: 
		sprite_index = spr_char_facingright; 
		inst = instance_place(x + collisionspd, y, sys_check);
		break;
	case 3: 
		sprite_index = spr_char_facingrightup; 
		inst = instance_place(x + (collisionspd / sqrt(2)), y - (collisionspd / sqrt(2)), sys_check);
		break;
	case 4: 
		sprite_index = spr_char_facingup; 
		inst = instance_place(x, y - collisionspd, sys_check);
		break;
	case 5: 
		sprite_index = spr_char_facingupleft; 
		inst = instance_place(x - (collisionspd / sqrt(2)), y - (collisionspd / sqrt(2)), sys_check);
		break;
	case 6: 
		sprite_index = spr_char_facingleft; 
		inst = instance_place(x - collisionspd, y, sys_check);
		break;
	case 7: 
		sprite_index = spr_char_facingleftdown; 
		inst = instance_place(x - (collisionspd / sqrt(2)), y + (collisionspd / sqrt(2)), sys_check);
		break;
}

if (global.player_facing >= 8) global.player_facing = 0; // Facing variable overflow

if (inst == noone) inst = instance_place(x, y, sys_check); 

if (inst != noone && keyboard_check_pressed(global.ctrl_interact) && !global.frozen) { // Checker
	inst.check();
	if (variable_instance_exists(inst,"r")) inst.r += 1; // Repeat checker
}