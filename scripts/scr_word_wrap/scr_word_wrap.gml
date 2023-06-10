/// @function word_wrap(str, width);
/// @param {string} str
/// @param {real}  width 

function word_wrap(str, max_width){
	var count = 0;
	var count_string = "";
	var latest_space = 0;
	var latest_n = 0;
	repeat (string_length(str)) {
		if string_char_at(str,count) == " " {
			latest_space = count
		}
		count_string = string_copy(str,1,count);
		if (string_width(count_string) > max_width) {
			if (latest_n == latest_space) {
				str = string_insert("\n", str, count)
				latest_n = count;
				latest_space = count;
			} else {
				str = string_insert("\n", str, latest_space + 1)
				str = string_delete(str, latest_space, 1)
			}
			latest_n = latest_space;
		}
		count++;
	}
return str;	
}