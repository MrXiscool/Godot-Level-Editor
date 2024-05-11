extends Node3D

@onready var mesh : CSGCombiner3D = $NavMesh/Mesh

func add_cube(pos : Vector3) -> void:
	
	var newCube = CSGBox3D.new()
	
	mesh.add_child(newCube)
	
	newCube.position = Vector3(roundi(pos.x), roundi(pos.y), roundi(pos.z))
	
