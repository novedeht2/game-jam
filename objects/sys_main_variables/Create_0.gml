global.player_facing = 0; // 0 = Down. Number increase moves direction counter clockwise, stopping at 7

global.current_dialogue = 0 // Main dialogue variable
global.current_line = 0 // Idk why this has to be global lol
global.frozen = false; // If true then the player cannot move or interact with stuff

//Controls

global.ctrl_left = vk_left;
global.ctrl_right = vk_right;
global.ctrl_up = vk_up;
global.ctrl_down = vk_down;
global.ctrl_interact = ord("Z");
global.ctrl_cancel = ord("X");
global.ctrl_shift = vk_lshift;

//Main font

draw_set_font(fnt_determination)