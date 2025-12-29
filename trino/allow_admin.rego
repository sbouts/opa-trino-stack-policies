package trino

import future.keywords.if

allow_admin if {
	user_is_admin(trino_user_id)
}

# validate if user is admin
user_is_admin(trino_user_id) if {
	# context.user_id == "admin"
	# input.context.identity.user == "superman"
	print(trino_user_id)
	external.users[trino_user_id].is_admin == true
}
