extends Node2D


export(PackedScene) var bomb_scene


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# checkpoint : https://www.youtube.com/watch?v=WEt2JHEe-do 38min

func _on_BombSpawnTimer_timeout():
	# Choose a random location on Path2D.
	var bomb_spawn_location = $BombPath/BombSpawnLocation
	bomb_spawn_location.unit_offset = randf()

	# Create a Mob instance and add it to the scene.
	var bomb = bomb_scene.instance()
	add_child(bomb)

	# Set the mob's direction perpendicular to the path direction.
#	var direction = bomb_spawn_location.rotation + PI / 2

	# Set the mob's position to a random location.
	bomb.position = bomb_spawn_location.position

	# Add some randomness to the direction.
#	direction += rand_range(-PI / 4, PI / 4)
#	bomb.rotation = direction
