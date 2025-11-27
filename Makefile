COUNT ?=

migrate-up:
	@echo "Migrating database..."
	# use -source for migrations path and -database for DB URL (quote the URL)
	migrate -source file://G:/DocSet/server/dao/migrations -database 'postgres://myuser:mypassword@db:5400/mydb?sslmode=disable' up $(COUNT)
	@echo "COUNT=$(COUNT)"

migrate-down:
	@echo "Rolling back database..."
	migrate -source file://G:/DocSet/server/dao/migrations -database 'postgres://myuser:mypassword@db:5400/mydb?sslmode=disable' down $(COUNT)

build:
	@echo "Building..."
	CGO_ENABLED=0 go build -o ./api/docset.tnx 

deploy: pull migrate-up
	CGO_ENABLED=0 go build -o ../docset/api/docset.tnx
	sudo systemctl restart docset.service
pull:
	@echo "Pulling latest changes..."
	git pull
run: build
	./api/docset.tnx











	