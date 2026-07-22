extends CharacterBody2D

#sets the player speed
const DEFAULT_SPEED = 300.0


#calculates movement inputs
func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("walk_left", "walk_right", "walk_forward", "walk_backwards")
	velocity = input_direction * DEFAULT_SPEED
	#prints the inputs and their effect
	#in the debug terminal
	print(input_direction)
	
	#when shift key is held down speed increaces
	var current_speed = DEFAULT_SPEED
	if Input.is_action_pressed("sprint"):
		# current_speed becomes 400.0
		current_speed += 100.0  
	velocity = input_direction * current_speed
	#enables the player character to move
	move_and_slide()
