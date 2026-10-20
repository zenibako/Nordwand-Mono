.PHONY: install build build-otf build-nerd-font install-mac

install:
	uv sync

build:
	uv run python -m generate_font --web-font
	uv run python -m scripts.banner
	uv run python -m scripts.specimen_pdf
	uv run python -m scripts.samples
	uv run python -m scripts.alternatives_markdown

build-font:
	uv run python -m generate_font --web-font

build-otf:
	uv run python -m generate_font --otf

build-nerd-font:
	uv run python -m scripts.nerd_font

install-mac:
	cp -r fonts/otf/NordwandMono-*.otf ~/Library/Fonts
