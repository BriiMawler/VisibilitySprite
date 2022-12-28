# VisibilitySprite

This is a small godot addon that adds some functionality to the basic sprite class. It adds a [VisibilityNotifier2D](https://docs.godotengine.org/en/stable/classes/class_visibilitynotifier2d.html) node and connects the screen_exited and screen_entered signals to show and hide the node.

## Caveats for usage

If the root node of a scene is a VisibilitySprite, the show/hide functions will affect all of that node's children as well (unless they're set_as_toplevel). If you have a sprite you want to hide, but it has child nodes that may need to be visible still I would recommend changing the root node to be something like a Node2D with the VisibilitySprite as a child node.
