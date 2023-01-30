extends RigidBody2D

signal hit
signal point


func _on_RigidBody2D_body_entered(body):
	if(body.get_name() == "Hook"):
		hide()
		emit_signal("point")
		emit_signal("hit")
	elif(body.get_name() == "Boat"):
		hide()
		emit_signal("hit")
	queue_free()
