## Esta clase indica que un nodo se va a comportar como entidad
class_name EntityComponent extends Node

@export var initial_components: Array[Component] = []

## Diccionario que almacena los componentes de la entidad usando el tipo de componente como clave.
var _components: Dictionary[StringName, Component] = {}

func _ready() -> void:
	for component in initial_components:
		add_component(component.duplicate())

## Añade un componente a la entidad. El componente debe tener un tipo
func add_component(component: Component) -> void:
	var type: StringName
	type = component.get_type()
	assert(type != &"", "Componente %s retornó TYPE vacío" % component.get_class())
	_components[type] = component

## Devuelve un componente a partir de su tipo
func get_component(type: StringName) -> Object:
	return _components.get(type, null)

## Devuelve si la entidad tiene o no el tipo de componente
func has_component(type: StringName) -> bool:
	return _components.has(type)

## Remueve el componente de la entidad a partir del tipo
func remove_component(type: StringName) -> void:
	_components.erase(type)
