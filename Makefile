VENV_DIR = venv


.PHONY: install lint test clean run

install:
    pip install -r requirements.txt

# Command to create and activate a virtual environment
venv:
    python3 -m venv $(VENV_DIR)
    . $(VENV_DIR)/bin/activate
    pip install --upgrade pip
    $(MAKE) install 

lint:
    flake8 src tests

test:
    pytest tests/

clean:
    find . -type f -name "*.pyc" -delete

run:
    python src/data_processing.py

pre-commit-install:
	pre-commit install --config config/pre-commit-config.yaml

pre-commit-run:
    pre-commit run --config config/pre-commit-config.yaml --all-files