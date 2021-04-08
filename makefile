install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install_azure:
	pip install --upgrade pip &&\
		pip install -r requirements_azure.txt

test:
	python -m pytest -vv test_hello.py

format:
	black *.py


lint:
	pylint --disable=R,C hello.py

all: install lint test