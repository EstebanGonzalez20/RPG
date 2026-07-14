class_name Health extends Component

func get_type() -> StringName:
	return &"Health"

@export var max_health : int : 
	set(value):
		max_health = max(value, 1)

var current_health : int :
	set(value):
		current_health = max(0, min(max_health, value))

func _ready() -> void:
	current_health = max_health

func take_damage(amount: int) -> void:
	current_health -= amount

func heal(amount: int) -> void:
	current_health += amount

func is_alive() -> bool:
	return current_health > 0
