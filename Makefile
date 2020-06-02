SCRIPTS := $(shell pwd)/scripts
PY := pipenv run python3

.PHONY: bootstrap build test ci release

bootstrap:
	$(SCRIPTS)/bootstrap.sh
	pipenv --python 3.7 install

build:
	pipenv update

test:
	$(PY) manage.py test

