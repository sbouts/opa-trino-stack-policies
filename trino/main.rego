package trino

import future.keywords.if

default allow := false

allow if {
	print("checking allow admin")
	allow_admin
}

allow if {
	print("checking allow default")
	allow_default_access
}

allow if {
	allow_catalog
}
