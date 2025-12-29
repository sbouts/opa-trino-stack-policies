package rbacserver

# this data comes from the rbac server
# and is loaded into opal client (opa)
# through opal server

# regal ignore:unresolved-import
users := data.external.users

# regal ignore:unresolved-import
catalog := data.external.catalog

# regal ignore:unresolved-import
schema := data.external.schema

# regal ignore:unresolved-import
table := data.external.table

# regal ignore:unresolved-import
column := data.external.column
