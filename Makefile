.PHONY: dev prod migrate

dev:
	go run cmd/sso/main.go --config=./config/local.yaml

prod:
	go run cmd/sso/main.go --config=./config/prod.yaml

migrate:
	go run cmd/migrator/main.go --storage-path=./storage/sso.db --migrations-path=./migrations