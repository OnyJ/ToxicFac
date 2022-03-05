extends Node2D

export (PackedScene) var Ui = preload("res://scenes/UI.tscn")

#var ui = preload("res://scenes/UI.tscn").instance()


var GameState = "MainMenu"


func _ready():
	print(GameState)


func _unhandled_input(event): # to Play again
	# event is good for a one time action
	if event.is_action_pressed("ui_accept"):
		start_game()
	if event.is_action_pressed("ui_cancel"):
		game_over()


func start_game():
	GameState = "Playing"
	$UI/MainMenu.hide()
	$Map.show()
	print(GameState)
func game_over():
	GameState = "MainMenu"
	$UI/MainMenu.show()
	$Map.hide()
	print(GameState)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



