extends Sprite2D

var velocidad = 200

func _process(delta):
	var movimiento = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		movimiento.x += 1
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= 1
	if Input.is_action_pressed("ui_down"):
		movimiento.y += 1
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= 1
	
	movimiento = movimiento.normalized() * velocidad * delta
	position += movimiento
	
	


func _on_enemigo_body_entered(body: Area2D) -> void:
	if body.name == "Personaje":
		print("¡Colisión detectada con el enemigo!")
