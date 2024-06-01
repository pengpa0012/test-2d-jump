extends StaticBody2D

@onready var display_size = get_viewport().get_visible_rect().size
@onready var player = get_node("/root/Main/Player")
@onready var ground = get_node("/root/Main/Ground")


func _on_visible_on_screen_notifier_2d_screen_exited():
	if is_instance_valid(player):
		self.position.y -= display_size.y
		self.position.x = randf_range(0, display_size.x)
		if is_instance_valid(ground):
			ground.queue_free()

