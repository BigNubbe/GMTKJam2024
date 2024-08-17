extends Node2D

@onready var collision = $StaticBody2D/CollisionShape2D
@onready var sprite = $Sprite2D
@export var keyplatform: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if keyplatform == true:
		if global.keyget == true:
			self.collision.disabled = true
			self.sprite.visible = false
		elif global.keyget == false:
			self.collision.disabled = false
			self.sprite.visible = true
	else:
		if global.togglevision == true:
			self.collision.disabled = true
			self.sprite.visible = false
		elif global.togglevision == false:
			self.collision.disabled = false
			self.sprite.visible = true
