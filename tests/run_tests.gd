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
	test_perception_event_bus()
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

	guard.state = GuardPerception.State.CALM
	guard.update(false, true)
	check(
		guard.state == GuardPerception.State.SUSPICIOUS,
		"hearing noise escalates CALM to SUSPICIOUS"
	)

	guard.state = GuardPerception.State.CALM
	guard.update(true, false, Vector3(0, 0, -5))
	check(
		guard.state == GuardPerception.State.ALERT,
		"seeing target escalates CALM to ALERT"
	)

	guard.state = GuardPerception.State.CALM
	var known_pos := Vector3(0, 0, -5)
	guard.update(true, false, known_pos)
	guard.update(false, false)
	check(
		guard.last_known_position == known_pos,
		"guard remembers last known target position"
	)


func test_perception_event_bus() -> void:
	var bus = EventBus.new()
	var guard = GuardPerception.new()
	var guard_pos := Vector3.ZERO

	bus.subscribe_near(
		guard_pos,
		guard.hearing_radius * 1.5,
		func(event: Dictionary) -> void:
			if event["type"] != "gunshot":
				return

			var noise_pos: Vector3 = event["position"]
			var noise_level := clampf(float(event["severity"]) / 5.0, 0.0, 1.5)
			if guard.hear(noise_pos, noise_level, guard_pos):
				guard.update(false, true)
	)

	bus.publish({
		"type": "gunshot",
		"position": Vector3(0, 0, -4),
		"severity": 3
	})
	check(
		guard.state == GuardPerception.State.SUSPICIOUS,
		"near gunshot makes guard suspicious"
	)

	guard.state = GuardPerception.State.CALM
	bus.publish({
		"type": "gunshot",
		"position": Vector3(0, 0, -30),
		"severity": 3
	})
	check(
		guard.state == GuardPerception.State.CALM,
		"distant gunshot does not affect guard"
	)
