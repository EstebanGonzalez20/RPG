class_name Damage extends Resource

## Diccionario que guarda los tipos de daño y el valor de estos.
var amounts : Dictionary[GlobalEnums.DamageTypes, int] = {}

func add_damage(damage_type: GlobalEnums.DamageTypes, value: int) -> void:
	amounts[damage_type] = (amounts[damage_type] if amounts.has(damage_type) else 0) + value

func total() -> int:
	var total := 0
	for i in amounts.values():
		total += i
	
	return total
