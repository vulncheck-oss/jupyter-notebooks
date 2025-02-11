.PHONY: build
build:
	jupyter nbconvert --to notebook --inplace --execute vulncheck-kev/vulncheck-kev-dashboard.ipynb
	jupyter nbconvert --to notebook --inplace --execute exploitation-timeline/exploitation-timeline.ipynb

.PHONY: deps
deps:
	sudo apt-get update && \
	sudo apt-get install jupyter unzip -y --fix-missing
	python -m pip install --upgrade pip -r requirements.txt

.PHONY: book
book: clean
	jupyter-book build .

.PHONY: clean
clean:
	rm -rf $(CURDIR)/_build/
