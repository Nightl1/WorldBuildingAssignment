extends VBoxContainer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$FPS.text = "FPS:" + str(Engine.get_frames_per_second())
	$Primitive.text = "Primitive count: " + str(Performance.get_monitor(Performance.RENDER_TOTAL_PRIMITIVES_IN_FRAME))
	$Drawcalls.text = "Draw Calls: " + str(Performance.get_monitor(Performance.RENDER_TOTAL_DRAW_CALLS_IN_FRAME))
	$Collisionpoints.text = "Collision Points: " + str(Performance.get_monitor(Performance.PHYSICS_3D_COLLISION_PAIRS))
	$Nodecount.text = "Node Counts: " + str(Performance.get_monitor(Performance.OBJECT_NODE_COUNT))
