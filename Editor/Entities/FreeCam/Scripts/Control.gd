extends Container

@onready var Root : Camera3D = $".."
@onready var AddMesh : VBoxContainer = $"Bar/Add Mesh/Menu"
@onready var RayCast : RayCast3D = $"../RayCast"
@onready var Look : Marker3D = $"../Look"

func _on_add_mesh_button_pressed():
	
	AddMesh.show()
	

func _on_cancel_pressed():
	
	AddMesh.hide()
	

func _on_cube_pressed():
	
	add_cube()
	

func add_cube() -> void:
	
	RayCast.force_raycast_update()
	
	if RayCast.is_colliding() == false:
		
		Look.position = RayCast.target_position
		
	else:
		
		var dir : Vector3 = (Root.global_position - RayCast.get_collision_point())
		Look.global_position = RayCast.get_collision_point() + Vector3(roundi(dir.x), roundi(dir.y), roundi(dir.z))
		
	
	if Root.Editor != null:
		
		Root.Editor.add_cube(Look.global_position)
		
