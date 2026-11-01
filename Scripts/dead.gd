extends CanvasLayer
@export var menu : CanvasLayer
@export var main : Node3D
@onready var label: Label = $Control/ColorRect/TextureRect2/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = str(Globals.distance_covered)
func _on_texture_button_pressed() -> void:
	Globals.restart = true

func _on_texture_button_2_pressed() -> void:
	main.get_tree().paused = true
	self.hide()
	Globals.menu = true
