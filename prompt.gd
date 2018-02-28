extends LineEdit

func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_ENTER and event.pressed:
			parse_text(text)
			text = ""

func parse_text(data):
	#expects a string coming in
	var args = data.split(" ")
	
	if args[0] == "slap":
		# CODE TO HIT OTHER CHARACTER
		var char_name = ""
		for i in range(1,len(args)):
			char_name += args[i] + " "
		
		slap(char_name)
		pass
	elif args[0] == "play":
		if args[1] == "game":
			print("THIS SHOULD PLAY THE GAME")

func slap(who):
	print("I HIT: ", who)