
extends SceneTree

const EventBusScript = preload("res://src/core/event_bus.gd")


func _initialize() -> void:
	test_basic_subscription()
	test_type_subscription()
	test_distance_filter()

	print("All EventBus tests passed")
	quit()


func test_basic_subscription() -> void:
	var bus = EventBusScript.new()
	var received: Array[Dictionary] = []

	bus.subscribe(func(event: Dictionary) -> void:
		received.append(event)
	)

	bus.publish({
		"type": "gunshot",
		"position": Vector3.ZERO,
		"severity": 3
	})

	assert(received.size() == 1, "Basic subscriber should receive events")
	print("Basic subscription test passed")


func test_type_subscription() -> void:
	var bus = EventBusScript.new()
	var received: Array[Dictionary] = []

	bus.subscribe_type("gunshot", func(event: Dictionary) -> void:
		received.append(event)
	)

	bus.publish({
		"type": "gunshot",
		"position": Vector3.ZERO,
		"severity": 3
	})

	bus.publish({
		"type": "explosion",
		"position": Vector3.ZERO,
		"severity": 5
	})

	assert(received.size() == 1, "Type subscriber should receive only gunshots")
	assert(received[0]["type"] == "gunshot", "Received event should be a gunshot")
	print("Type subscription test passed")


func test_distance_filter() -> void:
	var bus = EventBusScript.new()
	var received: Array[Dictionary] = []

	bus.subscribe_near(
		Vector3.ZERO,
		10.0,
		func(event: Dictionary) -> void:
			received.append(event)
	)

	bus.publish({
		"type": "gunshot",
		"position": Vector3(5, 0, 0),
		"severity": 3
	})

	bus.publish({
		"type": "gunshot",
		"position": Vector3(50, 0, 0),
		"severity": 3
	})

	assert(received.size() == 1, "Distance subscriber should receive only nearby events")
	print("Distance filter test passed")
