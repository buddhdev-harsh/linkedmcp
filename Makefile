.PHONY: install run clean

install:
	python -m venv venv && . venv/bin/activate && pip install -r requirements.txt

run:
	uv --directory src run linkedmcp/server.py

clean:
	rm -rf __pycache__ .mypy_cache .pytest_cache .venv
