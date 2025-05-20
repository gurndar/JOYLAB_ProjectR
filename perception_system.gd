extends Node2D

var time = 3
export var timer = 0.5#can be changed inspecter(has to be written as #.#)

func _ready():
	countdown_loop()

func countdown_loop():
	while true:
		print("3")
		time = 3
		yield(get_tree().create_timer(timer), "timeout")
		print("2")
		time = 2
		yield(get_tree().create_timer(timer), "timeout")
		print("1")
		time = 1
		yield(get_tree().create_timer(timer), "timeout")
		print("1")
		time = 0
		yield(get_tree().create_timer(timer), "timeout")
		print("2")
		time = 2
		yield(get_tree().create_timer(2 * timer), "timeout")
#		print("3")
#		time = 3
#		yield(get_tree().create_timer(0.5), "timeout")

func _process(delta):
	if Input.is_action_just_pressed("pressedSpaceBar"):
		if time == 3:
			print("excellent")
		elif time == 2:
			print("good")
		elif time == 1:
			print("bad")
		elif time == 0:
			print("miss")
