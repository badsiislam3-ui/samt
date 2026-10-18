class_name GuardPerception
extends RefCounted
## نظام إدراك موحد — حارس/شرطي/عضو عصابة = نفس الكود، الفروقات بيانات.


enum State { CALM, SUSPICIOUS, ALERT }

## تُعدَّل لكل دور: الحارس أوسع رؤية، الشرطي أسرع استجابة… إلخ
var view_distance := 12.0
var view_angle_deg := 70.0
var hearing_radius := 8.0

var state: int = State.CALM
var last_known_position := Vector3.ZERO


func can_see(observer_pos: Vector3, observer_forward: Vector3, target_pos: Vector3, light_level: float) -> bool:
	var to_target := target_pos - observer_pos
	var effective_range := view_distance * clampf(light_level, 0.15, 1.0)
	if to_target.length() > effective_range:
		return false
	var dir := to_target.normalized()
	var angle := rad_to_deg(acos(clampf(observer_forward.normalized().dot(dir), -1.0, 1.0)))
	return angle <= view_angle_deg / 2.0


func hear(noise_pos: Vector3, noise_level: float, observer_pos: Vector3) -> bool:
	var radius := hearing_radius * clampf(noise_level, 0.0, 1.5)
	return observer_pos.distance_to(noise_pos) <= radius


func update(sees_target: bool, heard_something: bool, target_pos := Vector3.ZERO) -> void:
	if sees_target:
		state = State.ALERT
		last_known_position = target_pos
	elif heard_something and state == State.CALM:
		state = State.SUSPICIOUS