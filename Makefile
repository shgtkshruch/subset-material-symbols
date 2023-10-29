.PHONY: setup
setup:
	git clone git@github.com:rsheeter/subset-gf-icons.git
	make download-font

.PHONY: download-font
download-font:
	@echo "Downloading and setting up Material Design Icons repository..."
	git clone --filter=blob:none --depth 1 --branch master --no-checkout git@github.com:google/material-design-icons.git
	cd material-design-icons && \
	git sparse-checkout set variablefont && \
  git checkout master
	@echo "Material Design Icons repository is set up."

.PHONY: clean
clean:
	@echo "Cleaning up..."
	rm -rf material-design-icons
	@echo "Cleanup complete."

.PHONY: up
up:
	docker compose up -d --build

.PHONY: exec
exec:
	docker compose exec subset-font bash

.PHONY: down
down:
	docker compose down
