extends Node2D

@onready var collision_polygon_2d = $StaticBody2D/CollisionPolygon2D
@onready var polygon_2d = $StaticBody2D/CollisionPolygon2D/Polygon2D

func _ready():
	RenderingServer.set_default_clear_color(Color.MIDNIGHT_BLUE)
	polygon_2d.polygon = collision_polygon_2d.polygon
	Events.level_completed.connect()
	
func show_level_completed();
	pass
