function check() {
	if (global.player_facing == 4 and obj_char.x > 434 and obj_char.x < 464 and obj_char.y > 370 and obj_char.y < 398) {
		global.current_dialogue[0] = "Wow. //%You look stunning, //%Hehe"
		instance_create_layer(0,0,"Instances",sys_text)
	} else {
		global.current_dialogue[0] = "Hehe, //%do you like my smile?"
		instance_create_layer(0,0,"Instances",sys_text)
	}
}