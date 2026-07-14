class_name Component extends Resource

## Devuelve el tipo del componente, si no se implementa arroja error.
func get_type() -> StringName:
	assert(false, "Componente %s no implementa get_type()" % get_class())
	return &""
