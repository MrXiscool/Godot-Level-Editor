class_name Editor extends Node3D

const LevelScene : PackedScene = preload("res://Editor/Maps/Editor/Scenes/LevelBase.tscn")

var Level = null

func _process(delta):
	
	level_update()
	

func level_update() -> void:
	
	if $"Level" == null:
		
		var newLevel = LevelScene.instantiate()
		
		add_child(newLevel)
		
		Level = $"Level"
		

func add_cube(pos : Vector3) -> void:
	
	level_update()
	
	Level.add_cube(pos)
	
