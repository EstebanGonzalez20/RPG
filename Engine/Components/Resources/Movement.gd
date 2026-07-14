class_name Movement extends Component

func get_type() -> StringName:
	return &"Movement"

@export var base_speed : int :
	set(value):
		base_speed = max(value, 1)

var remaining : int :
	set(value):
		base_speed = max(value, 0)

func _ready() -> void:
	remaining = base_speed

func reset() -> void:
	remaining = base_speed

func expend(amount: int) -> void:
	remaining -= amount
