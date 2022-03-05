extends Sprite

func _ready():
	# start timer
	var rand = RandomNumberGenerator.new()
	var bombscene = load("res://Bomb.tscn")
	
#	var spawn_size = 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# animations
	# Spawn : slides from left to position 0.
	# Success : slides from 0 to right


func bomb_is_toxic():
	# Toxic color
	# Toxic animation
	pass
func bomb_will_explode():
	# Danger color
	# Danger animation
		# create fast blinking animation
	pass
func bomb_is_saved():
	# Success color
	# Success animation
	pass
func bomb_explodes():
	# Explosion color
	# Explosion animation
	pass
