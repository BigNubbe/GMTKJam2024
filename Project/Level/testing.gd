extends Node2D

@export var new_width: float
@export var new_height: float
# Called when the node enters the scene tree for the first time.
func _ready():
	
	print(get_viewport_rect())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
