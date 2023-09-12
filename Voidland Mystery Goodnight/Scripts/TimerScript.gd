extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speedrunTime = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	speedrunTime += delta
	
	if visible:
		bbcode_text = str( stepify( speedrunTime, 0.01) )
	
	if Input.is_action_just_pressed("Restart"):
		speedrunTime = 0
	
	if Input.is_action_just_pressed("ShowTimer"):
		visible = !visible
	pass
