extends Node2D

@onready var next_level: PackedScene

@onready var level_completed = $CanvasLayer/LevelCompleted

func _ready():
	RenderingServer.set_default_clear_color(Color.MIDNIGHT_BLUE)
	Events.level_completed.connect(show_level_completed)
	
func show_level_completed():
	level_completed.show()
	
	get_tree().paused = true
	
