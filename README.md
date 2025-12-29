# OPA Trino Integration Example Policies

## Directory Structure

```shell
.
├── data                                # static data inputs (like the ones coming from OPAL)
│   └── external.json
├── inputs                              # inputs to test
│   └── execute-query.json
├── trino                               # actual policies
│   ├── allow_admin.rego
│   ├── allow_catalog.rego
│   ├── allow_default_access.rego
│   └── main.rego
└── README.md
```

## Evaluate policies

We can test policies using `opa eval`. Here are some examples:

```shell
# --explain=notes       shows print() statements
# --data                adds rego policies and static data
# --inputs              adds the query input
# "data.<path>"         allows for testing smaller parts of the policies
opa eval --explain=notes --data trino/ --data data/external.json --input inputs/execute-query-admin.json "data.trino.allow"
opa eval --explain=notes --data trino/ --data data/external.json --input inputs/execute-query-user.json "data.trino.allow"
```