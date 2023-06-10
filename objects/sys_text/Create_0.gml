command[0] = "/%"
command[1] = "//%"
command[2] = "///%"
command[3] = "/&"
command[4] = "/-"
command[5] = "/+"

text_speed = 0.50
text_width = 300;

t = 0;
print = "";
dialogue = global.current_dialogue;
c = global.current_line;
pause = 0;
wait = false;
function_index = 0;
func_index_index = 0;
next_wait = -1;
wait_icon = false;
alph = 1;

function prepare_dialogue () {
	wait_icon = false
	function_index = 0;
	func_index_index = 0;
	var index_index = 0;
	for (var i = 0; i < string_length(dialogue[c]); i++) {
		if (i == string_pos(command[0], dialogue[c]) and string_pos(command[0], dialogue[c]) != 0) {
			function_index[index_index,0] = i; function_index[index_index,1] = command[0]
			dialogue[c] = string_delete(dialogue[c], i, 2); // length
			index_index++
			i--
		}
		if (i == string_pos(command[1], dialogue[c]) and string_pos(command[1], dialogue[c]) != 0) {
			function_index[index_index,0] = i; function_index[index_index,1] = command[1]
			dialogue[c] = string_delete(dialogue[c], i, 3); // length
			index_index++
			i--
		}
		if (i == string_pos(command[2], dialogue[c]) and string_pos(command[2], dialogue[c]) != 0) {
			function_index[index_index,0] = i; function_index[index_index,1] = command[2]
			dialogue[c] = string_delete(dialogue[c], i, 4); // length
			index_index++
			i--
		}
		if (i == string_pos(command[3], dialogue[c]) and string_pos(command[3], dialogue[c]) != 0) {
			function_index[index_index,0] = i; function_index[index_index,1] = command[3]
			dialogue[c] = string_delete(dialogue[c], i, 2); // length
			index_index++
			i--
		}
		if (i == string_pos(command[4], dialogue[c]) and string_pos(command[4], dialogue[c]) != 0) {
			function_index[index_index,0] = i; function_index[index_index,1] = command[4]
			dialogue[c] = string_delete(dialogue[c], i, 2); // length
			index_index++
			i--
		}
		if (i == string_pos(command[5], dialogue[c]) and string_pos(command[5], dialogue[c]) != 0) {
			function_index[index_index,0] = i; function_index[index_index,1] = command[5]
			dialogue[c] = string_delete(dialogue[c], i, 2); // length
			index_index++
			i--
		}
	}
	dialogue[c] = word_wrap(dialogue[c], text_width)
}

prepare_dialogue();


global.frozen = true;