class_name Defence extends Component

func get_type() -> StringName:
	return &"Defence"

@export var defence : int :
	set(value):
		defence = max(value, 1)
