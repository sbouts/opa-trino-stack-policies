package trino

import data.external

import future.keywords.if
import future.keywords.in

allow_admin if {
	user_is_admin(input.context.identity.user)
}

# validate if user is admin
user_is_admin(trino_user_id) if {
	some user_obj in external.users
	user_obj[trino_user_id].is_admin == true
}
