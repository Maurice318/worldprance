extends CanvasLayer

@onready var button_no: Button = $GridContainer/ButtonNo
@onready var right_panel = $RightPanel

func _ready():
	button_no.grab_focus()

func _on_button_no_pressed():
	get_tree().paused = false
	queue_free()

func _on_button_yes_pressed():
	get_tree().paused = false
	Scenes.goto_level_select()
	queue_free()
