extends Node2D

export (PackedScene) var Ui = preload("res://scenes/UI.tscn")

var game_state = "main_menu"

#var ui = preload("res://scenes/UI.tscn").instance()


func _ready():
	print(game_state)


func _unhandled_input(event): # to Play again
	# event is good for a one time action
	if event.is_action_pressed("ui_accept"):
		start_game()
	if event.is_action_pressed("ui_cancel"):
		game_over()


func start_game():
	game_state = "playing"
	$UI/MainMenu.hide()
	$Map.show()
	print(game_state)
func game_over():
	game_state = "main_menu"
	$UI/MainMenu.show()
	$Map.hide()
	print(game_state)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



