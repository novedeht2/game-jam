pause = max(pause - 1,0)
if (pause == 0 and !wait) t += text_speed; 

if (wait == true or t >= string_length(dialogue[c])) wait_icon = true else wait_icon = false
alph = wave(0,1,1,0)

if (func_index_index != -1 and function_index != 0 and t + 1 >= function_index[func_index_index,0]) {
	switch (function_index[func_index_index,1]) {
		case command[0]: pause = 10; break;
		case command[1]: pause = 20; break;
		case command[2]: pause = 50; break;
		case command[3]: wait = true; break; 
		case command[4]: text_speed /= 2; break;
		case command[5]: text_speed *= 2; break;
	}
	if (func_index_index >= array_height_2d(function_index) - 1) {
		func_index_index = -1;
	} else {
		func_index_index++
	}
}

print = string_copy(dialogue[c],1,t);

if (string_char_at(dialogue[c],t) != " " and t <= string_length(dialogue[c]) and floor(t) == t) {
	if (pause = 0 and wait = false) {
		if (t mod 2 == 0) audio_play_sound(snd_text,1,false)
	}
} 

if (keyboard_check_pressed(global.ctrl_cancel)) {
	next_wait = -1;
	for (var i = 0; i < array_height_2d(function_index); i++ ) {
		if (function_index[i,1] == command[3] and function_index[i,0] > t) {
			next_wait = function_index[i,0];
			t = function_index[i,0] - 1;
			break;
		}
	}
	if (next_wait == -1) {
		t = string_length(dialogue[c]);
	}
}

if (keyboard_check_pressed(global.ctrl_interact)) {
	if (wait == true) {
		wait = false;
	}
	if (t >= string_length(dialogue[c])) {
		if array_length(dialogue) - 1 == c {
			alarm[0] = 2;
		} else { 
			c += 1; 
			t = 0
			prepare_dialogue();
		}
	}
}