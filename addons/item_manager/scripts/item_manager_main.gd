@tool
extends Control

@onready var item_name_line_edit:LineEdit = $VBoxMain/nameHBOX/LineEdit
@onready var item_type_option_button:OptionButton = $VBoxMain/typeHbox/OptionButton
@onready var all_item_list:ItemList = $VBoxMain/AllItemList

var all_item_list_arr:Array = []




func process():
	all_item_list_arr.clear()
	for items in all_item_list.item_count:
		all_item_list_arr.append(all_item_list.get_item_text(items))
	if all_item_list_arr != ItemManager.all_item.keys():
		all_item_list.clear()
		for items in ItemManager.all_item.keys():
			all_item_list.add_item(items)


func _on_add_item_button_pressed():
	ItemManager.all_item[item_name_line_edit.text] = {"type" : item_type_option_button.get_item_text(item_type_option_button.selected)}


func _on_all_item_list_item_clicked(index, at_position, mouse_button_index):
	if (mouse_button_index == 2):
		ItemManager.all_item.erase(ItemManager.all_item.keys()[index])
		all_item_list.remove_item(index)


func add_new_item_type_pressed():
	ItemManager.all_item_type.append("cool")
