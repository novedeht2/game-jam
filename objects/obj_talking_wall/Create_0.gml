r = 0
function check() {
	if r == 0 {
		global.current_dialogue[0] = "Yep, /%thats right. /%I'm a talking wall\n/&Bet you didn't expect that one, /%huh?"
		global.current_dialogue[1] = "Spare me the surprise, /%I've heard it all before"
		global.current_dialogue[2] = "No, /%I do not have eyes. //%And no, I do not watch you while you masturbate"
		global.current_dialogue[3] = "How do I know when you're listening? //%I just know, pal.\n/&Thats just how the game is programmed. //%It'd be weird to have a talking wall that didn't talk, /%don't you think?"
		global.current_dialogue[4] = "Anyway scram. //%I'm a little busy right now, //%Doing /%uh, //%nothing"
		instance_create_layer(0,0,"Instances",sys_text)
	} 
	if r == 1 {
		global.current_dialogue[0] = "Yep, /%thats right. /%I'm a talking wall\n/&Bet you didn't expect that one, /%huh?"
		global.current_dialogue[1] = "Oh, //%you're the same kid"
		global.current_dialogue[2] = "Sorry, /%pal. //%I get a lot of people asking about me. //%Hard to remember all the faces sometimes"
		global.current_dialogue[3] = "Didn't I tell you to scram? //%I'm a busy wall, /%I dont have time for this nonsense"
		instance_create_layer(0,0,"Instances",sys_text)
	}
	if r > 1 {
		global.current_dialogue[0] = "Didn't I tell you to scram?"
		instance_create_layer(0,0,"Instances",sys_text)
	}
}