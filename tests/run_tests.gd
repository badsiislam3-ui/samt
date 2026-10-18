extends SceneTree
## عدّاد اختبارات: godot --headless --script tests/run_tests.gd

const EventBus = preload("res://src/core/event_bus.gd")
const GuardPerception = preload("res://src/core/perception.gd")

var passed := 0
var failed := 0


func check(cond: bool, label: String) -> void:
	if cond:
		passed += 1
		print("PASS: ", label)
	else:
		failed += 1
		printerr("FAIL: ", label)


func _init() -> void:
	test_event_bus()
	test_perception()
	print("--- %d passed, %d failed ---" % [passed, failed])
	quit(1 if failed > 0 else 0)


func test_event_bus() -> void:
	var bus = EventBus.new()
	var received: Array = []
	bus.subscribe(func(e): received.append(e))
	bus.publish({"type": "gunshot", "position": Vector3(1, 0, 1), "severity": 3})
	check(received.size() == 1, "event bus delivers published event")
	check(received[0]["severity"] == 3, "event payload intact")


func test_perception() -> void:
	var guard = GuardPerception.new()
	var gpos := Vector3.ZERO
	var fwd := Vector3(0, 0, -1)
	check(guard.can_see(gpos, fwd, Vector3(0, 0, -5), 1.0), "guard sees target in light")
	check(not guard.can_see(gpos, fwd, Vector3(0, 0, -5), 0.1), "darkness shrinks vision")
	check(not guard.can_see(gpos, fwd, Vector3(0, 0, 5), 1.0), "blind spot behind guard")
	check(guard.hear(Vector3(0, 0, -4), 0.5, gpos), "guard hears close noise")
	check(not guard.hear(Vector3(0, 0, -30), 0.5, gpos), "guard deaf to far noise")
	guard.update(true, false, Vector3(0, 0, -5))
	check(guard.state == GuardPerception.State.ALERT, "seeing target escalates to ALERT")