class_name DamageRoll extends DiceRoll

@export var damage_type : GlobalEnums.DamageTypes

func critical_roll() -> int:
	var final := 0
	for i in (times * 2):
		final += dice.roll()
	
	return final + flat
