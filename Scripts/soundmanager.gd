extends Node

@onready var button: AudioStreamPlayer = $Button
@onready var crystals: AudioStreamPlayer = $crystals
@onready var idle: AudioStreamPlayer = $idle
@onready var jumping: AudioStreamPlayer = $jumping
@onready var running: AudioStreamPlayer = $running
@onready var powerup: AudioStreamPlayer = $powerup

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	process_mode =Node.PROCESS_MODE_ALWAYS

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.menu == false and Globals.restart == false and Globals.pause == false and Globals.Dead == false and Globals.on_floor:
		if not running.playing :
			running.play()
		if idle.playing:
			idle.stop()
	else:
		if not idle.playing:
			idle.play()
		if running.playing:
			running.stop()
	if Globals.button_sound == true:
		button.play()
		Globals.button_sound = false
	if Globals.crystals_sound == true:
		crystals.play()
		Globals.crystals_sound = false
	if Globals.powerup_sound == true:
		powerup.play()
		Globals.powerup_sound = false
	if Globals.jumping_sound == true:
		jumping.play()
		Globals.jumping_sound = false
