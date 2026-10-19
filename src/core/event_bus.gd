
class_name EventBus
extends RefCounted

## ناقل الأحداث بين أنظمة اللعبة.
## كل حدث يحتوي على type و position و severity.

signal event_published(event: Dictionary)

var _type_subscribers: Dictionary = {}
var _near_subscribers: Array[Dictionary] = []


func publish(event: Dictionary) -> void:
	assert(
		event.has("type") and event.has("position") and event.has("severity"),
		"Event must contain type, position, and severity"
	)

	event_published.emit(event)

	var event_type: String = str(event["type"])

	# إرسال الحدث إلى المشتركين بهذا النوع فقط.
	if _type_subscribers.has(event_type):
		for callable: Callable in _type_subscribers[event_type]:
			callable.call(event)

	# إرسال الحدث إلى المشتركين القريبين من موقعه.
	var event_position: Vector3 = event["position"]

	for subscriber: Dictionary in _near_subscribers:
		var center: Vector3 = subscriber["position"]
		var radius: float = subscriber["radius"]

		if center.distance_to(event_position) <= radius:
			var callable: Callable = subscriber["callable"]
			callable.call(event)


func subscribe(callable: Callable) -> void:
	event_published.connect(callable)


func subscribe_type(event_type: String, callable: Callable) -> void:
	if not _type_subscribers.has(event_type):
		_type_subscribers[event_type] = []

	_type_subscribers[event_type].append(callable)


func subscribe_near(
	center: Vector3,
	radius: float,
	callable: Callable
) -> void:
	assert(radius >= 0.0, "Radius must not be negative")

	_near_subscribers.append({
		"position": center,
		"radius": radius,
		"callable": callable
	})
