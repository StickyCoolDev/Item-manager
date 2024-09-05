@tool
extends EditorPlugin

var dock:Control
var main_style:Theme
var global



func _enter_tree():
	dock = preload("res://addons/item_manager/scene/item_manager_main_view.tscn").instantiate()
	get_editor_interface().get_editor_main_screen().add_child(dock)
	add_autoload_singleton("ItemManager","res://addons/item_manager/scripts/item_manager_global.gd")
	#add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_UR, dock)


func _exit_tree():
	dock.queue_free()
	#remove_autoload_singleton("ItemManager")
	remove_control_from_docks(dock)
