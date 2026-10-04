QUARTO := pixi run quarto

.PHONY: all build preview clean

all: build

# Render the site into docs/
build:
	$(QUARTO) render

# Live-reloading local preview
preview:
	$(QUARTO) preview

# Remove build artifacts (docs/ is the GitHub Pages output, so it is rebuilt by `make build`)
clean:
	rm -rf docs .quarto
