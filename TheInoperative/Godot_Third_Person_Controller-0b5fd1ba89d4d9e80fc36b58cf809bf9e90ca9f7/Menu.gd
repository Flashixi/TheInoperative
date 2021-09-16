extends Control

var Options = "res://Options.tscn"

var Main = "res://Main.tscn"

func _ready():
	$AnimationPlayer.play("Backdrop Animation")
	$AnimationPlayer.play("TitleAnim")          

func _on_Start_pressed():
	$AnimationPlayer.play("StartAnimation")
	yield($AnimationPlayer,"animation_finished")
	$AnimationPlayer.play("Backdrop Animation 2")
	yield($AnimationPlayer,"animation_finished")
	get_tree().change_scene(Main)

func _on_Quit_pressed():
	$AnimationPlayer.play("QuitAnimation")
	yield($AnimationPlayer,"animation_finished")
	$AnimationPlayer.play("Backdrop Animation 2")
	yield($AnimationPlayer,"animation_finished")
	get_tree().quit()
	
func _on_Options_pressed():
	$AnimationPlayer.play("OptionsAnim")
	yield($AnimationPlayer,"animation_finished")
	get_tree().change_scene(Options)
