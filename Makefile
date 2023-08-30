# Makefile for my_project

.PHONY: install test lint format safety docs clean

install:
	@echo "Installing project dependencies..."
	poetry install

test:
	@echo "Running tests..."
	poetry run pytest

lint:
	@echo "Running Flake8 for static code analysis..."
	poetry run flake8

format:
	@echo "Running Black to auto-format code..."
	poetry run black .

safety:
	@echo "Running Safety to check for insecure dependencies..."
	poetry run safety check

docs:
	@echo "Building documentation..."
	cd docs && make html

clean:
	@echo "Cleaning..."
	rm -rf build dist .pytest_cache .mypy_cache
	cd docs && make clean

precommit:
	@echo "Setting up pre-commit hooks..."
	pre-commit install

all: install lint format safety test docs
