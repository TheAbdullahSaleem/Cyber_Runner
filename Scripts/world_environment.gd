extends WorldEnvironment
@export var colours : Array[Color] = [
	Color.RED,
	Color.BLUE,
	Color.GREEN,
	Color.PURPLE,
	Color.ORANGE
]
@export var transition_duration : float = 10
var cur_colour:= 0
var next_colour:= 1
var progress := 0.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	environment.fog_enabled = true
	change_col()
func change_col():
	var index = 0
	while true:
		var next_index = (index + 1) % colours.size()
		var tween = create_tween()
		tween.tween_property(
			environment,"fog_light_color",colours[next_index],transition_duration)
		await tween.finished
		index = next_index 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
