# Linting database migrations with Atlas

[Atlas](https://atlasgo.io/) is a toolkit for working with database schemas.

Atlas is able to [validate](https://atlasgo.io/versioned/lint) a series of SQL database migration scripts against an ephemeral database with the CLI command `atlas migrate lint`.
This works not just for plain SQL files but also for SQL files rendered with [Go templates](https://pkg.go.dev/text/template).
One use-case for conditional execution of SQL statements is inserting values into the database in the staging environment but not in production (e.g. test data).
Passing the current environment as a variable to the Go template execution engine makes it possible to run SQL statements only in certain environments.

Go through this branch's commit history for a step-by-step demo on how to configure Atlas to lint templatized SQL files.
Be sure to read the full commit messages.
