class_name Weapon extends Resource

@export var id : int
@export var name : String
@export var weapon_class : GlobalEnums.WeaponClass
@export var range : WeaponRange
@export var damage : Array[DamageRoll]

func calculate_damage(critical : bool) -> Damage:
	var final_damage : Damage
	
	for damage_roll in damage:
		final_damage.add_damage(damage_roll.damage_type, damage_roll.critical_roll() if critical else damage_roll.roll())
	
	return final_damage
