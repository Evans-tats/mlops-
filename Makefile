.PHONY: install test clean

install:
	pip install -r requirements.txt

test:
	pytest

clean:
	find . -type d -name "__pycache__" -exec rm -r {} +
lint:
	pylint --disable=C0114,C0116,C0304 *.py
