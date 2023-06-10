function check() {
	global.current_dialogue[0] = "Don't mind them... //%They can be a little grumpy sometimes"
	global.current_dialogue[1] = "These creatures are naturally attuned to the feelings of all humans on earth. //%When you return home, /%try to hold a little more love in your heart. //%For their sake"
	instance_create_layer(0,0,"Instances",sys_text)
}