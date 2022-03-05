extends Node2D

export (PackedScene) var Ui = preload("res://scenes/UI.tscn")
export (PackedScene) var Map = preload("res://scenes/Map.tscn")
export (PackedScene) var Player = preload("res://scenes/Player.tscn")

var ui = load("res://scenes/UI.tscn").instance()
var map = load("res://scenes/Map.tscn").instance()
var game_state = "main_menu"
#var ui = preload("res://scenes/UI.tscn").instance()


func _ready():
	add_child(ui)
	$UI/MainMenu.show()
	print(game_state)


func _unhandled_input(event): # to Play again
	# event is good for a one time action
	if event.is_action_pressed("ui_accept"):
		start_game()
	if event.is_action_pressed("ui_cancel"):
		game_over()


func start_game():
	game_state = "playing"
	add_child(map)
	$UI/MainMenu.hide()
	print(game_state)

func game_over():
	game_state = "main_menu"
	remove_child(map)
	$UI/MainMenu.show()
	print(game_state)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



