extends Control

var Menu = "res://Scenes/Menu.tscn"

func _ready():
	$OptionsPlayer.play("OptionsBackAnim")

func _on_Back_pressed():
	get_tree().change_scene(Menu)
