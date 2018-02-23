.PHONY: clean tests docs

clean:
	rm -fr docs/_build build/ dist/
	pipenv run make -C docs clean

tests:
	pipenv run py.test

docs:
	pipenv run make -C docs html
