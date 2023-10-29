.PHONY: download-font clean up exec down

download-font:
	@echo "Downloading and setting up Material Design Icons repository..."
	git clone --filter=blob:none --depth 1 --branch master --no-checkout git@github.com:google/material-design-icons.git
	cd material-design-icons && \
	git sparse-checkout set variablefont && \
  git checkout master
	@echo "Material Design Icons repository is set up."

clean:
	@echo "Cleaning up..."
	rm -rf material-design-icons
	@echo "Cleanup complete."

up:
	docker compose up -d --build

exec:
	docker compose exec subset-font bash

down:
	docker compose down
