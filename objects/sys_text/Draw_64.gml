draw_rectangle_color(15, 15, 43 + text_width, 28 + string_height(dialogue[c]), c_black, c_black, c_black, c_black, false);
draw_rectangle(15, 15, 43 + text_width, 28 + string_height(dialogue[c]), true);

if (wait_icon) {
	draw_set_alpha(alph)
	draw_rectangle(30 + text_width, 12 + string_height(dialogue[c]), 38 + text_width, 20 + string_height(dialogue[c]), false);
}
draw_set_alpha(1)
draw_text(25, 20, print);