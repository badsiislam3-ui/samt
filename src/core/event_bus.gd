class_name EventBus
extends RefCounted
## ناقل الأحداث: العمود الفقري بين كل أنظمة اللعبة.
## كل حدث حزمة بيانات: النوع، الموقع، الخطورة — والفصائل تستجيب حسب دورها.

signal event_published(event: Dictionary)


func publish(event: Dictionary) -> void:
	# حقول إلزامية: type (String)، position (Vector3)، severity (int 1-5)
	assert(event.has("type") and event.has("position") and event.has("severity"))
	event_published.emit(event)


func subscribe(callable: Callable) -> void:
	event_published.connect(callable)