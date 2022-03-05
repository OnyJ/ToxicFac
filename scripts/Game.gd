extends Node2D

#export (PackedScene) var soome_item = preload("res://scenes/SomeItem.tscn")

var ui = load("res://scenes/UI.tscn")
var map = load("res://scenes/Map.tscn")
var game_state = "main_menu"


func _ready():
	add_child(ui.instance())
	$UI/MainMenu.show()
	print(game_state)


func _unhandled_input(event):
	# event is good for a one time action
	if event.is_action_pressed("ui_accept") && !is_playing():
		start_game()
	if event.is_action_pressed("ui_cancel") && !is_menu():
		game_over()


func start_game():
	game_state = "playing"
	add_child(map.instance())
	$UI/MainMenu.hide()
	print(game_state)

func game_over():
	game_state = "main_menu"
	$Map.queue_free()
	$UI/MainMenu.show()
	print(game_state)


func is_playing():
	return game_state == "playing"
func is_menu():
	return game_state == "main_menu"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



