@tool
extends Node

var all_item:Dictionary = {"sword":{"type": "sword"}}
var all_item_type:Array = ["sword", "knife"]



func add_new_item_type(type:String):
	all_item_type.append(type)
