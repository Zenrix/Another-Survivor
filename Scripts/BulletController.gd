extends Area2D

var speed = 300
var lifetime = 0.3

func _physics_process(delta):
	lifetime -= delta
	if lifetime <= 0:
		queue_free()
	position += transform.x * speed * delta

func _on_Bullet_body_entered(body):
	print(body)
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free()
