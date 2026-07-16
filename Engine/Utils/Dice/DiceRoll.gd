## Recurso que representa una tirada de dados, ej: 2d4 + 1.
class_name DiceRoll extends Resource

## El tipo de dado usado para la tirada.
@export var dice : Dice

## Cuantas veces se tira el tipo de dado.
@export var times : int

## Número fijo que se añade a la tirada.
@export var flat : int

func roll() -> int:
	var final := 0
	for i in times:
		final += dice.roll()
	
	return final + flat
