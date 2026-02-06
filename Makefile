.PHONY: install serve build clean docker-build docker-serve

# Native Ruby
install:
	bundle install

serve:
	bundle exec jekyll serve --livereload

build:
	bundle exec jekyll build

clean:
	rm -rf _site .jekyll-cache

# Docker
docker-build:
	docker build -t graphsense-website .

docker-serve:
	docker run --rm -p 4000:4000 -v $(PWD):/site graphsense-website
