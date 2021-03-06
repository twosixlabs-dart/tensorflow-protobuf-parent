SHELL = /bin/bash
VERSION := `cat version.txt`

python-env:
	if [ ! -d 'venv' ]; then python3 -m venv venv; fi; \

get-protos: python-env
	. ./venv/bin/activate; \
	pip install -r requirements.txt; \
	scripts/gather-protos --tf_version $(VERSION); \

