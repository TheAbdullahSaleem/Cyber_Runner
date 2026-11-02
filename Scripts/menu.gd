extends CanvasLayer
@onready var label: Label = $Control/TextureRect/Label
@onready var label_2: Label = $Control/TextureRect/Label2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = str(Globals.crystals)
	label_2.text = str(Globals.max_distance)
	if Globals.menu == true:
		self.show()
	elif Globals.menu == false:
		self.hide()


func _on_texture_button_pressed() -> void:
	self.hide()
	Globals.restart = true
	Globals.button_sound = true
