extends CharacterBody3D

# Velocidad mínima del mob en metros por segundo.
@export var min_speed = 10
# Velocidad máxima del mob en metros por segundo.
@export var max_speed = 18

func initialize(start_position, player_position):
	look_at_from_position(start_position, player_position, Vector3.UP)
	rotate_y(randf_range(-PI / 4, PI / 4))

	var random_speed = randi_range(min_speed, max_speed)
	velocity = Vector3.FORWARD * random_speed
	velocity = velocity.rotated(Vector3.UP, rotation.y)

func _physics_process(_delta):
	move_and_slide()

func _on_visible_on_screen_notifier_3d_screen_exited():
	queue_free()
