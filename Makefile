.PHONY: all build open clean

all: build open

build:
	docker compose up -d

open:
	sleep 5
	open http://localhost:5678

clean:
	docker compose down
