.PHONY: install install-dev clean lint format test test-cov check check-fix

## Install for production
install:
	python -m pip install -e .

## Install for development 
install-dev: install
	python -m pip install -e ".[dev]"

build:
	python -m build

## Delete all temporary files
clean:
	rm -rf .ipynb_checkpoints
	rm -rf **/.ipynb_checkpoints
	rm -rf .pytest_cache
	rm -rf **/.pytest_cache
	rm -rf __pycache__
	rm -rf **/__pycache__
	rm -rf build
	rm -rf dist

## Lint using ruff
lint:
	python -m ruff .

## Format files using black
format:
	python -m ruff format .

## Run tests
test:
	python -m pytest

test-cov:
	python -m pytest --cov=src --cov-report xml --log-level=WARNING --disable-pytest-warnings

lint-fix:
	python -m ruff check . --fix
