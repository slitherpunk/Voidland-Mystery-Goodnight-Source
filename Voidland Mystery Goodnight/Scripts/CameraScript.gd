extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 5


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("MoveUp"):
		if get_node("Camera2D/Border/ArrowUp").is_visible():
			self.position.y -= 300
	if Input.is_action_just_pressed("MoveDown"):
		if get_node("Camera2D/Border/ArrowDown").is_visible():
			self.position.y += 300
	if Input.is_action_just_pressed("MoveLeft"):
		if get_node("Camera2D/Border/ArrowLeft").is_visible():
			self.position.x -= 300
	if Input.is_action_just_pressed("MoveRight"):
		if get_node("Camera2D/Border/ArrowRight").is_visible():
			self.position.x += 300
	if Input.is_action_just_pressed("Restart"):
		self.position.x = 0
		self.position.y = 0
	pass
	
