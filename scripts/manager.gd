## LevelManager.gd
#extends Node
#
## Array of level scene paths
#var levels := [
	#"res://Levels/Level1.tscn",
	#"res://Levels/Level2.tscn",
	## Add more levels here
#]
#
## Current level index
#var current_level_index := 0
#
## Reference to the current loaded level
#var current_level := null
#
#func _ready() -> void:
	## Load the first level when the game starts
	#load_level(current_level_index)
#
#func load_level(index: int) -> void:
	## Check if there is an existing level and remove it
	#if current_level != null:
		#current_level.queue_free()
	#
	## Load the new level scene
	#var level_scene := load(levels[index]).instance()
	#add_child(level_scene)
	#current_level = level_scene
#
#func next_level() -> void:
	## Check if there's a next level
	#if current_level_index + 1 < levels.size():
		#current_level_index += 1
		#load_level(current_level_index)
	#else:
		#print("All levels completed!")
