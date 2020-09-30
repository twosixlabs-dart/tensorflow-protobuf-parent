SHELL = /bin/bash
VERSION := `cat version.txt`

python-env:
	if [ ! -d 'venv' ]; then python3 -m venv; fi; \

get-protos: venv
	. ./venv/bin/activate; \
	pip install -r requirements.txt; \
	scripts/gather-protos --tf_version $(VERSION); \

