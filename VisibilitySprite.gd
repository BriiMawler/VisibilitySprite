tool
extends Sprite
class_name VisibilitySprite

var visibility = VisibilityNotifier2D.new()

func _ready():
	#set initial visibility rect
	update_visibility_rect()
	
	#if the sprite changes in any way, update the visibility rect
	visibility.connect("item_rect_changed", self, "update_visibility_rect")
	visibility.connect("texture_changed", self, "update_visibility_rect")
	
	#enable hiding/showing based on visibility notifications
	visibility.connect("screen_exited", self, "_on_VisibilityNotifier2D_screen_exited")
	visibility.connect("screen_entered", self, "_on_VisibilityNotifier2D_screen_entered")

func update_visibility_rect():
	visibility.rect = get_rect()

func _on_VisibilityNotifier2D_screen_entered():
	show()

func _on_VisibilityNotifier2D_screen_exited():
	hide()
