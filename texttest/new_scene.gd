
extends Node2D

var singleton
var textnode
var words

func _ready():
	singleton=Globals.get_singleton("GodotTextToSpeech")
	textnode=get_node("TextEdit")	
	textnode.set_wrap(true)
	
	#init the tts engine
	singleton.fireTTS()
	
func _on_Button_pressed():
	words=textnode.get_text()
	singleton.speakText(str(words))
	
	#clear off the text box
	words=""
	textnode.set_text(str(words))
