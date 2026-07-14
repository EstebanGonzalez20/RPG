class_name Dice extends Resource

@export var sides : int

## Devuelve un valor aletario siendo 1 el valor mínimo y la propiedad sides el valor máximo
func roll() -> int:
	return randi_range(1, sides)
