# Python Starter

A starter project for a modern Python application with a focus on simplicity.

## Features

- [build](https://github.com/pypa/build/) for packaging
- [ruff](https://docs.astral.sh/ruff/) for linting and formatting
- [mypy](https://mypy-lang.org/) for type checking
- [click](https://click.palletsprojects.com/en/8.1.x/) for CLI
- `pyproject.toml` Project definition
- `make` for easy commands

## Building

Easily install and package your project.

```bash
# create a virtual environment
python -m venv .venv
source .venv/bin/activate

# install
make install-dev

# run
python main.py

# test
make test

# package
make build
```
